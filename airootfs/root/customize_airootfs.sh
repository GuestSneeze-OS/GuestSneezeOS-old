#!/bin/bash

cd /root
git clone https://github.com/GuestSneezeOS-official/gsos-install
cp -R /root/gsos-install/* /
cd -
chmod +x -R /usr/bin /etc/lib /etc/X11 /home/liveuser/Desktop
systemctl enable sddm
