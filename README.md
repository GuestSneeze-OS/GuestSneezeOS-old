**TABLE OF CONTENTS**
- [GuestSneezeOS](#GuestSneezeOS)
- [Linux > MacOS](##Linux-vs-MacOS)
- [Features](##Features)
- [Macbook Support](##Apple-Macbook-support)
- [System Requirements](##Requirements)
- [Passwords](##Passwords)
- [SteamOS based Distro's](##SteamOS-based-Distros)
# GuestSneezeOS
![GuestSneezeOS](https://github.com/GuestSneezeOS-Official/GuestSneezeOS/assets/163439609/05a2442c-cedc-4bf5-9f73-71d5c1098aaf)
![badge](https://github.com/GuestSneezeOS-Official/GuestSneezeOS/actions/workflows/main.yml/badge.svg) 
[![Steam](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)
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
- Compatible file systems
- APFS
- Bcachefs
- Btrfs
- ext2, ext3, and ext4
- exFAT
- F2FS
- FAT12, FAT16, and FAT32
- HFS and HFS+
- NFS
- NTFS
- OverlayFS
- ReiserFS
- SquashFS
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
|winesapOS |2022-03-06	| 2022-03-10            |
| SteamOS for PS4 |	2022-03-09 |	2022-03-25        |
| HoloISO	| 2022-04-21	| 2022-05-01 |
| GuestSneezeOS | 2024-05-1 | 2024-06-2 |
|LuncheonOS | 2024-03-14 | Unkown |
