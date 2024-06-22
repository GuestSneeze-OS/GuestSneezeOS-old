# GuestSneezeOS
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
- CrossOver Mac, a commercial Wine product, is one of the few ways to run games on macOS. It costs money and requires a new license yearly (or a very expensive lifetime license).
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
- 2. A semi-modern CPU (Dual Core)
- 3. An Intel Or AMD GPU (Nvidia Users Coming Soon)
- 4. At least a 10GB USB drive (for the installer)
- 5. At least 20GB of disk space (will use 16-18 GB depending on how much storage you have )

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
- [Jupiter Linux](https://github.com/jupiter-linux)
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

# Building GuestSneezeOS
> [!WARNING]  
> THIS WILL USE 12 GB OF STORAGE.

> [!CAUTION]
> I AM NOT RESPONSIBLE FOR ANY DAMAGE CAUSED ON YOUR DEVICE.
GuestSneezeOS is built Using Archiso (There is a `build.sh` for people who do not want to use `mkarchiso`)
1. Open Terminal And Type `git clone https://github.com/GuestSneezeOS-Official/GuestSneezeOS`
2. Then Install Archiso to make the iso `sudo pacman -Sy archiso`
3. once Downloaded you should have knowledge on how to use Archiso ([Video Tutorial](https://www.youtube.com/watch?v=tSGGBbJBgvk&t=31s) [Wiki](https://wiki.archlinux.org/title/archiso))
4. Test ISO in QEMU with legacy BIOS `run_archiso -i /path/to/guestsneezeos-yyyy.mm.dd-x86_64.iso` or by using UEFI `run_archiso -i /path/to/guestsneezeos-yyyy.mm.dd-x86_64.iso`
5. if you want LUKS encryption on your OS follow [this tutorial](https://wiki.archlinux.org/title/archiso#Encryption)
6. If you want to use a window manager in the Live CD, you must add the necessary and correct video drivers, or the WM may freeze on loading.

# Troubleshooting
## GuestSneezeOS not booting
- There are many different reasons why GuestSneezeOS may not be booting.
- Refer to WinesapOS's Detailed [Macboot](https://github.com/LukeShortCloud/winesapos/?tab=readme-ov-file#mac-boot) And [Windows boot](https://github.com/LukeShortCloud/winesapos/?tab=readme-ov-file#windows-boot)
- If using a USB Type-C cable, try flipping it upside down (180 degrees)
* BIOS
   * Older motherboards that do not support GPT partition layouts will not be able to boot GuestSneezeOS. 
## GuestSneezeOS not being installed
- type in terminal
```
cd /root/ArchScripts/
./install.sh
```
