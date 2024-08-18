### DEVELOPMENT CONTINUES HERE : https://github.com/GuestSneeze-OS/GuestSneezeOS

# GuestSneezeOS Immutable Rolling
GuestSneezeOS is a robust, free-to-use ,lightweight,Immutable,operating system designed to bring the functionality of Valve's SteamOS to a wide range of devices, including desktops, laptops, and more. We aim to support all compatible computers (please check the system requirements). GuestSneezeOS is also less bloated than other distros (*cough* *cough* `Qubes,Ubuntu,Debian`).
![319986030-05a2442c-cedc-4bf5-9f73-71d5c1098aaf](https://github.com/GuestSneezeOS-Official/GuestSneezeOS/assets/163439609/32015c8f-8259-48a3-92e6-846248197867)
![badge](https://github.com/GuestSneezeOS-Official/GuestSneezeOS/actions/workflows/main.yml/badge.svg) 
[![Steam](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)

Table of contents
=================

<!--ts-->
   * [GuestSneezeOS](#GuestSneezeOS)
      * [Linux Vs MacOS](#Linux-vs-MacOS)
      * [Features](#Features)
      * [System Reqs](#Requirements)
      * [Passwords](#Passwords)
      * [SteamOS Based Distros](#SteamOS-based-Distros)
   * [Gaming Support](#Gaming-support)
      * [Comparison with SteamOS](#Comparison-with-SteamOS)
   * [How to Dualboot](#How-To-dualboot)
      * [Dualbooting With Windows](#Windows-Preperation-For-Dualbooting)
      * [Dualbooting](#Dualbooting)
   * [Other OSS Projects](#Other-OSS)
   * [Driver Support](#Driver-Support)
      * [Macbook Support](#Apple-Macbook-support)
      * [Steam Deck Support](#Stean-Deck-Support)
   * [Building GuestSneezeOS](#Building-GuestSneezeOS)
   * [Troubleshooting](#Troubleshooting)
<!--te-->

# Linux vs MacOS
These are reasons why macOS is inferior compared to Linux when it comes to gaming.
- No 32-bit support. The latest version of macOS is now 64-bit only meaning legacy native games will not run.
- Steam Play's Proton is only supported on Linux (not macOS).
- Old and incomplete implementations of OpenGL 4.1 and OpenCL 1.2
- No native Vulkan support.
- Linux has kernel-level optimizations for Wine.
- CrossOver Mac, a commercial Wine product, is one of the few ways to run games on macOS. It costs money and requires a new license yearly (or a very expensive lifetime license). Which as of today is open-source well its not open-source but it is in their [website](https://media.codeweavers.com/pub/crossover/source/)
The community fork of Wine from CrossOver lacks support for some game launchers, codecs, and translation layers.
# Features
- Any computer with an AMD or Intel processor can run GuestSneezeOS.
- Compatible with different PC manufacturers
- Compatible with both UEFI and Legacy/BIOS
- Easy to build
- Steam Deck look and feel (Gamescope provided)
- KDE Plasma desktop environment is used for ricing (also SteamOS uses it)
- Compatible Many file systems
# Requirements 
- 1. At least 2GB of RAM
  2. intel i3 or Ryzen 3 CPU('s)
- 2. A semi-modern CPU (Dual Core)
- 3. An Intel Or AMD,Nvidia GPU
- 4. At least a 10GB USB drive (for the installer)
- 5. At least 18GB of disk space (will use 16-18 GB depending on how much storage you have )

# Passwords

|GuestSneezeOS Ver   | Username           | Passwords          |
|--------------------| ------------------ | ------------------ |
|1.0                 | root               | root               |
|1.0                 |liveuser            | holoconfig         |

# SteamOS based  Distros
|Distro	| First Preview	| First Public Release |
|-------|---------------|----------------------|
| GuestSneezeOS | 2024-05-1 | 2024-06-2 |
|winesapOS |2022-03-06	| 2022-03-10    |
| SteamOS for PS4 |	2022-03-09 |	2022-03-25 |
| HoloISO	| 2022-04-21	| 2022-05-01 |

# Gaming Support
Open Gamepad UI for an open source video game console experience.
Bottles for all Windows programs.
EmuDeck for video game console emulators.
- Wine:
- 1. Proton is installed along with Steam for playing Windows games on Linux.
- 2. GE-Proton is installed along with the ProtonUp-Qt package manager for it. This provides better Windows games compatibility.
-Game launchers:
- Steam. (Ofcourse it comes preinstalled)
- Lutris for all other games.
- Gamescope for a gaming session
- Opengamepadui for a gaming session
# Comparison with SteamOS
|Features            |SteamOS 3.x|GuestSneezeOS 5 |
|--------------------|-----------|----------------|
|Arch Linux packages|	    Old    |    New         |
|Boot compatibility |	    UEFI	 |UEFI and legacy BIOS|
|Graphics drivers   |	AMD        |	AMD, Gnome Boxes, Intel, NVIDIA, Parallels, VirtualBox, VMware And QEMU |
|Read-only file system|	Yes      |	No |
|Encrypted file system|No	       | No  |
|Package managers (CLI)|	flatpak and nix |	pacman, flatpak , yay and SteamCMD |
|Package managers (GUI)|	Discover (flatpak)|	Discover (flatpak) ,Steam and Lutris|
|Game launchers        | Steam	| Steam, Lutris, Open Gamepad UI|
|Linux kernels	       |Neptune (6.5)	| Linux (6.9.3) |

# How To Dualboot
This are a few guides on how to Dualboot GuestSneezeOS with Windows

# Windows Preperation For Dualbooting
- If Bitlocker is turned On then turn it off
- If Secure Boot is Turned On Turn it Off
- Create (Minumum 20 GB) Partition with Disk Management
- Right Click on the C: Partition
- Shrink Volume and select how much size should GuestSneezeOS Have (Minumum 20 GB)

# Dualbooting
- Boot into the Live USB
- Once booted install it and select the Drive that you created (sda is C: and sdb is D:)

# Other OSS
Other OSS (Open Source Software) That we Use or has helped build the Operating System
- [ArchISOMaker](https://github.com/gsanhueza/ArchISOMaker)
- [WinesapOS](https://github.com/LukeShortCloud/winesapOS)
- [Glorious Eggroll Proton](https://github.com/GloriousEggroll/proton-ge-custom)
- [Gamescope](https://github.com/ValveSoftware/gamescope)
- [OpenGamepadUI](https://github.com/ShadowBlip/OpenGamepadUI)

# Driver Support
Driver Support for These Devices

# Apple Macbook support
| Hardware	|Supported|	Third-Party Driver(s) |
|-----------|---------|-----------------------|
| Keyboard	|Yes      |	linux-t2 patches      |
| Touchpad	|Yes      |	linux-t2 patches      |
| NVMe	    | Yes     |	linux-t2 patches      |
| Sound	    | Yes     |	linux-t2 patches and apple-t2-audio-config |
| Fans | Yes | mbpfan |
| Bluetooth	| Yes	| linux-t2 patches and apple-bcm-firmware |
| Wi-Fi	| Yes	| broadcom-wl and apple-bcm-firmware |
| Fingerprint scanner	| No	                    |
| Touch Bar |	Yes	| linux-t2 patches            |

# Steam Deck Support
|Hardware	| Supported	| Third-Party Driver(s) |
|---------|-----------|-----------------------|
|Keyboard |	Yes	| |
|Touchpad |	Yes |	|
| NVMe	  | Yes	| |
| Sound |	Yes |	linux-firmware-valve |
|Fans	| Yes | 	|
| Bluetooth	| Yes |	linux-firmware-valve |
|Wi-Fi |	Yes |	linux-firmware-valve |
| Touchscreen	| Yes	|

#### OneXPlayer Handhelds (@lUkeshortcloud made this possible)

| Hardware | Supported | Third-Party Driver(s) |
| -------- | --------- | --------- |
| Controller | Yes | |
| NVMe | Yes | |
| Sound | Yes | |
| Fans | Yes | [oxp-sensors-dkms-git](https://gitlab.com/Samsagax/oxp-sensors) |
| Bluetooth | Yes | |
| Wi-Fi | Yes | |
| Fingerprint scanner | No | |

# Troubleshooting
## GuestSneezeOS not booting
- There are many different reasons why GuestSneezeOS may not be booting.
- Refer to WinesapOS's Detailed [Macboot](https://github.com/LukeShortCloud/winesapos/?tab=readme-ov-file#mac-boot) And [Windows boot](https://github.com/LukeShortCloud/winesapos/?tab=readme-ov-file#windows-boot)
- If using a USB Type-C cable, try flipping it upside down (180 degrees)
* BIOS
   * Older motherboards that do not support GPT partition layouts will not be able to boot GuestSneezeOS. 
## GuestSneezeOS not being installed
if this installer does not work try this (GuestSneezeOS 5+)
```
sudo passwd root
su
cd ~/newbackup/
sudo bash install.sh
```
if it is still is not working either make your own installer or contact me

# Building GuestSneezeOS
## On Arch Linux
```
sudo pacman -Sy archiso git
git clone https://github.com/GuestSneezeOS/GuestSneezeOS/
cd GuestSneezeOS
./build.sh -v
```
### On Debian
```
sudo apt update && sudo apt upgrade -y
mkdir ~/GuestSneezeOS
cd ~/GuestSneezeOS
sudo apt install debootstrap arch-install-scripts curl git
debootstrap --arch amd64 stable ./arch https://deb.debian.org/debian/
sudo mount --bind /dev ./arch/dev
sudo mount --bind /proc ./arch/proc
sudo mount --bind /sys ./arch/sys
sudo chroot ./arch
pacman -Syy
pacman -S archiso git
git clone https://github.com/GuestSneezeOS/GuestSneezeOS
cd GuestSneezeOS
./build.sh -v
exit
sudo umount ./arch/dev
sudo umount ./arch/proc
sudo umount ./arch/sys
ls ~/GuestSneezeOS/out
```

## Supporters of the Project
- GuestSneezeOSDev : Founder and Project leader (Builder,Designer and Coder of the Project)
- nyxiereal : Newer README (No longer supporting the project)
- LukeShortCloud : winesapOS (we use the repository in the `pacman.conf`)
- Gabriel Sanhueza (gsanhueza/archisomaker) (Made the build script for GuestSneezeOS)

## How to disable READONLY file system
```
sudo steamos-readonly disable
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman -S <package name>
```
Make sure to do this if you are sure about what you are doing because this might break your system I reccomend instead Flatpaks, AppImages, or Distrobox

## Setting up Docker
Enable the netfilter module:
```
sudo modprobe br_netfilter
echo "br_netfilter" | sudo tee /etc/modules-load.d/netfilter.conf
```
Enable IP Forwarding :
```
sudo sysctl net.ipv4.ip_forward=1
echo "net.ipv4.ip_forward=1" | sudo tee /etc/sysctl.d/ip_forward.conf
```
Create an .nspawn file We are going to create a systemd .nspawn configuration which we can use later by passing --machine name when creating containers :
```
sudo mkdir /etc/systemd/nspawn
sudo nano /etc/systemd/nspawn/archlinux.nspawn
```

and when you reach the GNU Nano in this part add this code
```
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
```
Also give any containers using the .nspawn access to fuse: 
```
sudo systemctl set-property systemd-nspawn@archlinux DeviceAllow='/dev/fuse rwm'
```
If you made the user directory mounts read-only, youll need to add the Docker Container on the host and/or service
```
sudo groupadd -r docker
sudo usermod -aG docker deck
sudo systemctl restart sddm
```
Install Docker
```
sudo pacman -S docker
sudo systemctl enable docker --now
```
then Reenable read-only for the system not to break
```
sudo steamos-readonly enable
sudo journalctl -xeu docker
```
you should be able to use docker without root
```
docker run -it --rm --name alpine alpine:latest /bin/sh
```
## PROGRAMMING LANGUAGES USED
CSS,SHELL,QML,JS

## Information Sources
[Arch Wiki](https://wiki.archlinux.org/)
[winesapOS](https://github.com/LukeShortCloud/winesapOS)
[Root Pages](https://rootpages.lukeshort.cloud/unix_distributions/arch_linux.html)
[Root Pages (SteamOS)](https://rootpages.lukeshort.cloud/unix_distributions/steamos.html)
[SteamOS Guides](https://github.com/Ethorbit/SteamDeck-SteamOS-Guides/tree/main/Installing-Any-Package)
