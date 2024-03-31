# This file provides some common code that is intented to be called
# by the various boot-<arch> scripts.

# Make sure that sbin directories are on the PATH too - filesystem
# creation tools are often hidden there
PATH=/sbin:/usr/sbin:$PATH
export PATH

# Expand %ARCH% variable in envvars for location of D-I images
DI_WWW_HOME="$(echo "$DI_WWW_HOME" | sed -e "s|%ARCH%|$ARCH|g")"
DI_DIR="$(echo "$DI_DIR" | sed -e "s|%ARCH%|$ARCH|g")"

# Make sure that DI_DIST is set to something sane
if [ ! "$DI_DIST" ]; then
    DI_DIST="$DI_CODENAME"
fi

# Find out what the default desktop is in tasksel if we've not set it
# (i.e. using "all" for netinst, DVD etc.) - print the name of the
# first desktop task recommended by task-desktop
UNSPEC_DESKTOP_DEFAULT="$($BASEDIR/tools/apt-selection cache depends task-desktop | \
    awk '
    /Recommends:.*desktop/ {
        gsub("task-","")
        gsub("-desktop","")
        print $2
        exit
    }')"

# Only i386 and amd64 use DESKTOP to set the default desktop;
# make sure other arches get a working config
if [ "$ARCH" != i386 ] && [ "$ARCH" != amd64 ]; then
    if [ "$DESKTOP" = all ] || [ "$DESKTOP" = "$UNSPEC_DESKTOP_DEFAULT" ] ; then
        DESKTOP=
        KERNEL_PARAMS="$(echo "$KERNEL_PARAMS" | \
                sed -r "s/desktop=[^ ]* ?//")"
    elif [ "$DESKTOP" = light ] ; then
        DESKTOP=xfce
        KERNEL_PARAMS="$(echo "$KERNEL_PARAMS" | \
                sed -r "s/(desktop=)light/\1xfce/")"
    fi
fi


# Add an option to the mkisofs options for this CD _only_ if it's not
# already set. $1 is the opts file location, "$2" is the new
# option. Call this with _logical groupings_ of options
add_mkisofs_opt() {
   OPTS_FILE=$1
   NEW_OPT="$2"

   if ! ( grep -q -- "$NEW_OPT" $OPTS_FILE 2>/dev/null) ; then
       echo -n "$NEW_OPT " >> $OPTS_FILE
   fi
}

variant_enabled() {
    VARIANT=$1

    echo "$VARIANTS" | grep -qw "$VARIANT"
    return $?
}

# Wrapper around which_deb which looks in all relevant distributions
find_pkg_file() {
    local pkgfile
    for dist in $DI_CODENAME $CODENAME ${UNRELEASED/1/unreleased}; do
        pkgfile=$($BASEDIR/tools/which_deb $MIRROR $dist "$@")
        [ -n "$pkgfile" ] && break
    done
    if [ -z "$pkgfile" ]; then
        echo "WARNING: unable to find the $@ package in $DI_CODENAME or $CODENAME distribution of the mirror" >&2
    fi
    echo $pkgfile
}

# Work out the right boot load size for a specified file
calc_boot_size() {
    FILE=$1

    size=$[($(stat -c%s "$FILE")+2047)/2048]
    echo $size
}

# If we're looking for an image location to download, see if it's in a
# local cache first.
try_di_image_cache() {
    DI_TMP_DIR=${DI_WWW_HOME#*https://}
    if [ -n "$DI_DIR" ] && [ -e "${DI_DIR}/${DI_TMP_DIR}" ] ; then
        DI_DIR="$DI_DIR/${DI_TMP_DIR}"
        DI_WWW_HOME=""
        echo "Using images from local cache: $DI_DIR"
    else
	# If not, we'll end up downloading. Complain if the download
	# link looks insecure (i.e. not https). May cause builds to
	# fail here in future...
        case "$DI_WWW_HOME"x in
	    "http://"*x|"ftp://"*x)
		echo "WARNING WARNING WARNING WARNING WARNING WARNING"
		echo "$0: insecure download for d-i build: $DI_WWW_HOME"
		echo "WARNING WARNING WARNING WARNING WARNING WARNING"
		;;
	esac
    fi
}

# This arch is currently not bootable directly from CD, and there's
# not a lot we can do about that. But add the needed files in the
# right place so that users can find them, at least:
#
# kernel(s)
# initramfs
# DTBs
# etc...
#
# The best wasy to find all the files is to parse d-i's MANIFEST file
# and work from there.
copy_arch_images() {
    mkdir -p $CDDIR/$INSTALLDIR
    cd $CDDIR/$INSTALLDIR

    if [ ! "$DI_WWW_HOME" ];then
	if [ ! "$DI_DIR" ];then
            DI_DIR="$MIRROR/dists/$DI_DIST/main/installer-$ARCH/current/images"
	fi
	cp "$DI_DIR/MANIFEST" MANIFEST
    else
	$WGET "$DI_WWW_HOME/MANIFEST" -O MANIFEST
    fi

    for image in $(awk '{print $1}' MANIFEST); do
	if [ ! -e "$image" ]; then
            dir=$(dirname $image)
            mkdir -p $dir
            if [ -n "$LOCAL"  -a -f "${LOCALDEBS:-$MIRROR}/dists/$DI_DIST/local/installer-$ARCH/current/images/$image" ]; then
		cp "${LOCALDEBS:-$MIRROR}/dists/$DI_DIST/local/installer-$ARCH/current/images/$image" "$image"
            elif [ ! "$DI_WWW_HOME" ];then
		if [ ! "$DI_DIR" ];then
                    DI_DIR="$MIRROR/dists/$DI_DIST/main/installer-$ARCH/current/images"
		fi
		cp -a "$DI_DIR/$image" "$image"
            else
		$WGET --no-parent -r -nH --cut-dirs=3 "$DI_WWW_HOME/$image"
            fi
	fi
    done

    # Clean up in case we had to use $WGET :-(
    find . -name 'index.html*' -delete
}

# Grab the xorriso version and turn it into a number we can use
xorriso_version() {
    $MKISOFS --version 2>&1 | awk '
	/^xorriso version/ {
	    split($4, ver, ".")
	    print ver[1]*10000+ver[2]*100+ver[3]
	}'
}

# Work out how many blocks we need for a FAT filesystem to hold all
# the EFI boot files
calculate_efi_image_size() {
    CDDIR=$1

    sector_bytes=512 # -S
    cluster_sectors=4 # -s
    cluster_bytes=$((sector_bytes * cluster_sectors))

    clusters=4 # 1 cluster for each sub-directory
    for file in $CDDIR/EFI/*/*; do
        [ -f "$file" ] || continue
        clusters=$(($clusters + (($(stat -c %s "$file") + $cluster_bytes - 1) / $cluster_bytes)))
    done
    reserved_sectors=1 # boot-sector -R
    reserved_bytes=$(($reserved_sectors * $sector_bytes))
    fat_copies=2 # -f
    if [ "$clusters" -le $(((1 << 12) - 2)) ]; then
        fat_entry_bytes=3/2 # -F
    elif [ "$clusters" -le $(((1 << 16) - 2)) ]; then
        fat_entry_bytes=2 # -F
    else
        fat_entry_bytes=4 # -F
    fi
    fat_bytes=$((($clusters * $fat_entry_bytes + $sector_bytes - 1) / $sector_bytes * $sector_bytes))
    root_entries=512 # -r
    root_entry_bytes=32
    root_bytes=$(($root_entries * root_entry_bytes))
    size=$(($reserved_bytes + $fat_copies * $fat_bytes + $root_bytes + $clusters * $cluster_bytes))

    track_sectors=32
    track_bytes=$((sector_bytes * $track_sectors))
    tracks=$((($size + $track_bytes - 1) / $track_bytes))
    block_bytes=1024
    blocks=$(($tracks * $track_bytes / $block_bytes))

    echo $blocks
}

extra_image () {
    image=$1
    doppelgangers="$2"
    dir=$(dirname "$image")

    mkdir -p $CDDIR/$INSTALLDIR/$dir
    if [ ! -e $CDDIR/$INSTALLDIR/"$image" ] ; then
        if [ ! "$DI_WWW_HOME" ] ; then
            if [ ! "$DI_DIR" ] ; then
                DI_DIR="$MIRROR/dists/$DI_DIST/main/installer-$ARCH/current/images"
            fi
            cp "$DI_DIR/cdrom/$image" $CDDIR/$INSTALLDIR/"$image"
        else
            $WGET "$DI_WWW_HOME/cdrom/$image" -O $CDDIR/$INSTALLDIR/"$image"
        fi
    fi
    for doppelganger in $doppelgangers ; do
        if [ -f "$CDDIR/$INSTALLDIR/$dir/$doppelganger" ] &&
               cmp -s $CDDIR/$INSTALLDIR/"$image" $CDDIR/$INSTALLDIR/"$dir"/"$doppelganger" ; then
            echo "    $image identical to $doppelganger. Linking"
            ln -nf $CDDIR/$INSTALLDIR/"$dir"/"$doppelganger" $CDDIR/$INSTALLDIR/"$image"
            break
        fi
    done
}
