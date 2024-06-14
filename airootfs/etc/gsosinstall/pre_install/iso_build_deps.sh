#!/bin/zsh
# Prepares ISO for packaging

# Prepare thyself
chmod +x /etc/gsosinstall/post_install/gsosinstall.sh
chmod +x /etc/skel/Desktop/install.desktop
chmod 755 /etc/skel/Desktop/install.desktop
# Begin coreOS bootstrapping below:

# Init pacman keys
pacman-key --init
pacman -Sy

# Install desktop suite
pacman -Rcns --noconfirm pulseaudio xfce4-pulseaudio-plugin pulseaudio-alsa
pacman -Rdd --noconfirm sddm syslinux xorg-xwayland
pacman --overwrite="*" --noconfirm -S holoiso-main

# Remove useless shortcuts for now
mkdir /etc/gsosinstall/post_install_shortcuts
mv /etc/skel/Desktop/Return.desktop /etc/gsosinstall/post_install_shortcuts
# Add a liveOS user
ROOTPASS="holoconfig"
LIVEOSUSER="liveuser"

echo -e "${ROOTPASS}\n${ROOTPASS}" | passwd root
useradd --create-home ${LIVEOSUSER}
echo -e "${ROOTPASS}\n${ROOTPASS}" | passwd ${LIVEOSUSER}
echo "${LIVEOSUSER} ALL=(root) NOPASSWD:ALL" > /etc/sudoers.d/${LIVEOSUSER}
chmod 0440 /etc/sudoers.d/${LIVEOSUSER}
usermod -a -G rfkill ${LIVEOSUSER}
usermod -a -G wheel ${LIVEOSUSER}
mkdir -p /var/cache/pacman/
mv /.steamos/offload/var/cache/pacman/pkg /var/cache/pacman/
mv /etc/pacman.conf /etc/pacold
cp /etc/gsosinstall/post_install/pacman.conf /etc/pacman.conf
pacman -Rdd --noconfirm sddm
pacman --overwrite="*" --noconfirm -S holoiso-updateclient wireplumber flatpak packagekit-qt5 rsync unzip sddm-wayland dkms steam-im-modules systemd-swap ttf-twemoji-default ttf-hack ttf-dejavu pkgconf pavucontrol partitionmanager gamemode lib32-gamemode cpupower bluez-plugins bluez-utils
mv /etc/xdg/autostart/steam.desktop /etc/skel/Desktop/steamos-gamemode.desktop /etc/gsosinstall/post_install_shortcuts
pacman --noconfirm -S base-devel
sed -i 's/base udev modconf/base udev plymouth modconf/g' /etc/mkinitcpio.conf
pacman --overwrite="*" --noconfirm -S handygccs-git extra-main/mesa extra-main/vulkan-radeon extra-main/vulkan-intel multilib-main/lib32-mesa multilib-main/lib32-vulkan-radeon multilib-main/lib32-vulkan-intel
plymouth-set-default-theme -R steamos
mkinitcpio -P

# Enable stuff
systemctl enable sddm NetworkManager systemd-timesyncd bluetooth sshd

# Download extra stuff
# mkdir -p /etc/gsosinstall/post_install/pkgs/nv
mkdir -p /etc/gsosinstall/post_install/kernels
wget $(pacman -Sp linux-firmware-neptune) -P /etc/gsosinstall/post_install/pkgs_addon
wget $(pacman -Sp win600-xpad-dkms) -P /etc/gsosinstall/post_install/pkgs_addon

for kernel in $(cat /etc/gsosinstall/post_install/kernel_list.bootstrap)
do
    cp $(pacman -Sp $kernel | cut -c8-) /etc/gsosinstall/post_install/kernels
done

# wget $(pacman -Sp extra-main/nvidia-dkms) -P /etc/gsosinstall/post_install/pkgs/nv
# wget $(pacman -Sp extra-main/nvidia-utils) -P /etc/gsosinstall/post_install/pkgs/nv
# wget $(pacman -Sp multilib-main/lib32-nvidia-utils) -P /etc/gsosinstall/post_install/pkgs/nv
# wget $(pacman -Sp egl-wayland) -P /etc/gsosinstall/post_install/pkgs/nv
# wget $(pacman -Sp egl-external-platform) -P /etc/gsosinstall/post_install/pkgs/nv
# wget $(pacman -Sp extra-main/opencl-nvidia) -P /etc/gsosinstall/post_install/pkgs/nv
# wget $(pacman -Sp multilib-main/lib32-opencl-nvidia) -P /etc/gsosinstall/post_install/pkgs/nv
# wget $(pacman -Sp extra-main/nvtop) -P /etc/gsosinstall/post_install/pkgs/nv
# wget $(pacman -Sp extra-main/nvidia-settings) -P /etc/gsosinstall/post_install/pkgs/nv
# wget $(pacman -Sp extra-main/nvidia-prime) -P /etc/gsosinstall/post_install/pkgs/nv
# rm -rf /etc/gsosinstall/post_install/pkgs/nv/*.zst.* && rm -rf /etc/gsosinstall/post_install/pkgs/nv/*515*

# Workaround mkinitcpio bullshit so that i don't KMS after rebuilding ISO each time and having users reinstalling their fucking OS bullshit every goddamn time.
rm /etc/mkinitcpio.conf
mv /etc/gsosinstall/pre_install/mkinitcpio.conf /etc/mkinitcpio.conf 
rm /etc/mkinitcpio.d/* # This removes shitty unasked presets so that this thing can't overwrite it next time
mkdir -p /etc/mkinitcpio.d

# Remove this shit from post-build
rm -rf /etc/gsosinstall/pre_install
rm /etc/pacman.conf
mv /etc/pacold /etc/pacman.conf
rm -rf /etc/xdg/powermanagementprofilesrc
rm -rf /home/liveuser/Desktop/steamos-gamemode.desktop
rm -rf /home/liveuser/Desktop/Return.desktop
systemctl disable qemu-guest-agent
