#!/bin/bash

cd /etc
chmod +x -R /home/liveuser/Desktop/install.desktop /etc/gsosinstall/post_install/gsosinstall.sh
systemctl enable sddm
