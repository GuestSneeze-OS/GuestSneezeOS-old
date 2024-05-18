#!/bin/bash
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
BUILDDIR="/run/host/var/www/downloads"
#rm -rf ${SCRIPTPATH}/airootfs/etc/holoinstall/*zst
source ${BUILDDIR}/holoiso-images/latest_beta.releasemeta
#mkdir -p ${SCRIPTPATH}/airootfs/etc/holoinstall
#cp ${BUILDDIR}/holoiso-images/${IMAGEFILE}.img.zst ${SCRIPTPATH}/airootfs/etc/holoinstall
echo ${IMAGEFILE} > /tmp/currentcandidate
sudo mkarchiso -v -w /tmp/$(date +%Y%m%d.%H%M.%S) -o ${BUILDDIR}/holoiso-installer ${SCRIPTPATH}
