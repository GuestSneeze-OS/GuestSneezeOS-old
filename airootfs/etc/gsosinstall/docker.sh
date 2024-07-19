#!/bin/bash
sudo steamos-readonly disable
sudo modprobe br_netfilter
echo "br_netfilter" | sudo tee /etc/modules-load.d/netfilter.conf
sudo sysctl net.ipv4.ip_forward=1
echo "net.ipv4.ip_forward=1" | sudo tee /etc/sysctl.d/ip_forward.conf
sudo mkdir -p /etc/systemd/nspawn
sudo tee /etc/systemd/nspawn/archlinux.nspawn <<EOF
[Exec]
Boot=true
Capability=all
SystemCallFilter=add_key keyctl bpf
Bind=/dev/fuse

[Files]
Bind=/home
Bind=/mnt
Bind=/etc/hosts
Bind=/etc/passwd
Bind=/etc/shadow
Bind=/etc/group
Bind=/etc/gshadow
Bind=/etc/subgid
Bind=/etc/subuid
Bind=/etc/sudoers
Bind=/etc/sudoers.d
BindReadOnly=/etc/resolv.conf
BindReadOnly=/tmp/.X11-unix
EOF

sudo systemctl set-property systemd-nspawn@archlinux DeviceAllow='/dev/fuse rwm'

sudo pacman -Syu --noconfirm
sudo pacman -S docker --noconfirm
sudo systemctl enable docker --now
sudo steamos-readonly enable
echo "Running Docker container..."
sudo docker run -it --rm --name alpine alpine:latest /bin/sh
echo "Your Running a Container (Docker) inside of a Container Good Job"
