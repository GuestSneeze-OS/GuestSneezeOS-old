# GuestSneezeOS Contributor Guide

## Architecture

| Partition |	File System	| Size|
|-----------|-------------|------|
| GSOS EFI  | FAT32       | 500 MiB|
| GSOS-BOOT | ext4        | 1 GiB | 
| GuestSneezeOS-root | ext4 | 100% |

## `pacman.conf`: What It Is and How to Edit It

The `pacman.conf` file is the configuration file for Pacman, the package manager used by GuestSneezeOS. This file contains settings that control how Pacman operates and where it finds packages. It includes general options for behavior and repository definitions for downloading packages.

### Structure of `pacman.conf`

Here's an example of what a repository entry in `pacman.conf` looks like:

```
[winesapos] # The name of the repository
Server = https://winesapos.lukeshort.cloud/repo/$repo/$arch # URL to the repository
SigLevel = Never # Signature check level
```
## Editing your `packages.x86_64` file
the `packages.x86_64` file is a file responsible for keeping packages such as those from the Arch Linux Packages site or those from `the pacman.conf`, For example packages in the winesapos repository can be used like `yay` and/or `paru`
## Build
This is the official way to build the GuestSneezeOS iso
- Requirements 11 GB of Free Space
- 2 GB RAM
- Dual-Core
- UEFI

Here is how
- If your on any Arch Linux based OS such as GuestSneezeOS or winesapOS you can run these commands
```
sudo pacman -Sy archiso git
git clone https://github.com/GuestSneezeOS/GuestSneezeOS/
cd GuestSneezeOS
./build.sh -v
```
if the `build.sh` is not working try the `mkarchiso` version
```
sudo pacman -Sy archiso git
git clone https://github.com/GuestSneezeOS/GuestSneezeOS/
mkarchiso -v -w work/ -o out/ GuestSneezeOS/
```
- If you are on a Debian Based Linux distro such as Kali Linux or Ubuntu run these commands
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
mkarchiso -v -w work/ -o out/ GuestSneezeOS/
exit
sudo umount ./arch/dev
sudo umount ./arch/proc
sudo umount ./arch/sys
ls ~/GuestSneezeOS/out
```
