# GuestSneezeOS
![GuestSneezeOS](https://github.com/GuestSneezeOS-Official/GuestSneezeOS/assets/163439609/05a2442c-cedc-4bf5-9f73-71d5c1098aaf)
![badge](https://github.com/GuestSneezeOS-Official/GuestSneezeOS/actions/workflows/main.yml/badge.svg) 
[![Steam](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)

Table of contents
=================

<!--ts-->
   * [GuestSneezeOS](#GuestSneezeOS)
      * [Linux Vs MacOS](##Linux-vs-MacOS)
      * [Features](##Features)
      * [Macbook Support](##Apple-Macbook-support)
      * [System Reqs](##Requirements)
      * [Passwords](##Passwords)
      * [SteamOS Based Distros](##SteamOS-based-Distros)
   * [Gaming Support](#Gaming-support)
      * [Comparison with SteamOS](##Comparison-with-SteamOS)
   * [How to Dualboot](#How-To-dualboot)
      * [Dualbooting With Windows](##Windows-Preperation-For-Dualbooting)
      * [Dualbooting](##Dualbooting)
<!--te-->

## Linux vs MacOS
These are reasons why macOS is inferior compared to Linux when it comes to gaming.
- No 32-bit support. The latest version of macOS is now 64-bit only meaning legacy native games will not run.
- Steam Play's Proton is only supported on Linux (not macOS).
- Old and incomplete implementations of OpenGL 4.1 and OpenCL 1.2
- No native Vulkan support.
- Linux has kernel-level optimizations for Wine.
- CrossOver Mac, a commercial Wine product, is one of the few ways to run games on macOS. It costs money and requires a new license yearly (or a very expensive lifetime license).
The community fork of Wine from CrossOver lacks support for some game launchers, codecs, and translation layers.
## Features
- Any computer with an AMD or Intel processor can run GuestSneezeOS.
- Compatible with different PC manufacturers
- Compatible with both UEFI and Legacy/BIOS
- Easy to build
- Steam Deck look and feel (Gamescope provided)
- KDE Plasma desktop environment is used for ricing (also SteamOS uses it)
- Compatible Many file systems
## Apple Macbook support
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
## Requirements 
- 1. At least 2GB of RAM
- 2. A semi-modern CPU (Dual Core)
- 3. An Intel Or AMD GPU (Nvidia Users Coming Soon)
- 4. At least a 10GB USB drive (for the installer)
- 5. At least 20GB of disk space (GuestSneezeOS 1)

## Passwords

|GuestSneezeOS Ver   | Username           | Passwords          |
|--------------------| ------------------ | ------------------ |
|1.0                 | root               | root               |
|1.0                 |liveuser            | holoconfig         |

## SteamOS based  Distros
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
## Comparison with SteamOS
|Features            |SteamOS 3.x|GuestSneezeOS 2 |
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

## Windows Preperation For Dualbooting
- If Bitlocker is turned On then turn it off
- If Secure Boot is Turned On Turn it Off
- Create (Minumum 20 GB) Partition with Disk Management
- Right Click on the C: Partition
- Shrink Volume and select how much size should GuestSneezeOS Have (Minumum 20 GB)

## Dualbooting
- Boot into the Live USB
- Once booted install it and select the Drive that you created (sda is C: and sdb is D:)

# Screenshots
<img width="560" alt="GuestSneezeOS Screeenshot" src="https://github.com/GuestSneezeOS-Official/GuestSneezeOS/assets/163439609/214c5382-ca37-4999-94fa-e161e2ef84da">
<img width="638" alt="GuestSneezeOS Screenshot" src="https://github.com/GuestSneezeOS-Official/GuestSneezeOS/assets/163439609/47f98f31-7d2f-4604-9a9d-9b1621b03a19">
