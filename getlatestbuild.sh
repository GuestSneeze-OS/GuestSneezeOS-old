#!/bin/bash
SCRIPT=$(realpath "$0")
SCRIPTPATH=$(dirname "$SCRIPT")
DOWNLOADPATH=${SCRIPTPATH}/airootfs/etc/gsosinstall
downloadendpoint=https://https://guestsneezeos-official/guestsneeezeos/releases
preferred_imgtype=".img.zst"
endpoint=https://https://guestsneezeos-official/guestsneeezeos/releases/latest_${UPD_BRANCH}.releasemeta
curl -s "${endpoint}" > ${SCRIPTPATH}/buildinfo

source ${SCRIPTPATH}/buildinfo
mkdir -p ${DOWNLOADPATH}
if [[ -f "${DOWNLOADPATH}/${IMAGEFILE}${preferred_imgtype}" ]]; then
    echo "Already there."
else
    wget ${downloadendpoint}/${IMAGEFILE}${preferred_imgtype} -P ${DOWNLOADPATH}
fi
