#!/bin/bash

cd /etc
chmod +x -R /home/liveuser/Desktop/install.desktop /etc/gsosinstall/post_install/gsosinstall.sh
chmod +x -R /root/newbackup/install.sh
systemctl enable sddm
