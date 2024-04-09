# GuestSneezeOS
[![Steam](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)
![Release Package Number](https://release-badges-generator.vercel.app/api/releases.svg?user=GuestSneezeOS-Official&repo=GuestSneezeOS&gradient=ff6600,ffe500)
![GuestSneezeOS](https://github.com/GuestSneezeOS-Official/GuestSneezeOS/assets/163439609/05a2442c-cedc-4bf5-9f73-71d5c1098aaf)
![GitHub License](https://img.shields.io/github/license/GuestSneezeOS-Official/GuestSneezeOS)
![BuildISO](https://img.shields.io/badge/Build_ISO_-Passing-green)
**TABLES OF CONTENTS**
- [About GuestSneezeOS](#about)
- [System Requirements](#requirements)
- [Passwords](#passwords)
- [How To Install GuestSneezeOS](#how-to-install-guestsneezeos)
- [Make Custom GuestSneezeOS Based ISO](#make-custom-guestsneezeos-based-iso)
- [Authors And Contributors](#authors)

# About
**GuestSneezeOS** is A lighter Version Of SteamOS 3. this SteamOS clone focuses on preformance and simplicity.Comes preinstalled with wine,steam and discord and coming soon with android app support. heres an OS comparison.
|Distro Name                        |GuestSneezeOS       | ChimeraOS          | SteamOS 3.x        | HoloISO           |Nobara            |Bazzite           |
| --------------------------------- |--------------------| ------------------ | ------------------ | ------------------|------------------|------------------|
| Based on                          |Debian 12 & 13      | Arch Linux         | Arch Linux         | Arch Linux        | Fedora Linux     | Fedora Atomic    |
| Desktop                           |Cinnamon            | Gnome              | KDE Plasma         | KDE Plasma        | KDE Plasma       | Gnome/KDE Plasma |
| Distro Size                       |11 GB,2 GB Ram      |20 GB,4+GB          |32 GB HDD,4 GB+ RAM |20 GB,4 GB RAM     |20 GB,2 GB RAM    |50 GB,4+ GB RAM   |
| Atomic updates                    |✔️                  | :heavy_check_mark: | :heavy_check_mark: | :heavy_check_mark:|:x:               |:heavy_check_mark:|
| Read-write root filesystem        |✔️                  | :x:                | :x:                | :x:               |:heavy_check_mark:|:x:               |
| Custom partitioning               |✔️                  | :x:                | :x:                | :x:               |:heavy_check_mark:|:x:               |
| General hardware support          |✔️                  | :heavy_check_mark: | :x:                | :heavy_check_mark:|:heavy_check_mark:|:heavy_check_mark:|
| Up-to-date base packages          |✔️                  | :heavy_check_mark: | :x:                | :x:               |:heavy_check_mark:|:heavy_check_mark:|
| Remote app installation           |✔️                  | :heavy_check_mark: | :x:                | :x:               |:heavy_check_mark:|:x:               |
| Built-in EGS & GOG support        |✔️                  | :heavy_check_mark: | :x:                | :x:               |                  |:heavy_check_mark:|
| Built-in emulation support        |✔️ 8.10 Release     | :heavy_check_mark: | :x:                | :x:               |                  |:x:               |
| Additional game tweaks            |:x:                 | :heavy_check_mark: | :x:                | :x:               |                  |:heavy_check_mark:|
| Additional artwork                |:x:                 | :heavy_check_mark: | :x:                | :x:               |                  |:x:               |
| Built-in GE Proton                |✔️                  | :heavy_check_mark: | :x:                | :x:               |:heavy_check_mark:|:heavy_check_mark:|
| Full source publicly hosted       |:x:                 | :heavy_check_mark: | :x:                | :x:               |:heavy_check_mark:|:heavy_check_mark:|

# Supported Commands 
- [All Debian Commands](https://wiki.debian.org/ShellCommands)

# Requirements
- 1. UEFI Enable Firmware (not legacy)
- 2. At least 2GB of RAM
- 3. A semi-modern CPU (Dual Core)
- 4. An Intel Or AMD GPU (Nvidia Users Coming Soon)
- 5. At least an 8GB USB drive (for the installer)
- 6. At least 11GB of disk space (GuestSneezeOS 6.10 not GuestSneezeOS 6)

# Passwords
The Live ISO's Password is evolution (Why We Also Don't Know) 
<br>
How To Change It?
- Boot Into The Installer And Install it in "Text Mode" (This is the only supported format we have been able to install guestsneezeos successfully)
- Just Follow The Onscreen Instructions Then You Will See To Change The User,Root And Passwords

# How To Install GuestSneezeOS
Here is a link to a [tutorial as a video](https://www.youtube.com/watch?v=BmhSwH5yaYI&feature=youtu.be) if you don't like reading a REAME.md File
- Boot into the usb that has **GuestSneezeOS**
- select The Option That Says "Text Mode" Don't Use "Live/Installation Media" it is not stable it is in HIGH development and not ready to be used
- once your there click the left arrow key if you see a debian 12 banner why cuz it will take you to a graphical installer also known as the "Live/Installation Media" its is not stable and is on HIGH development
- it will check if the system was used successfully it will show an [OK]. This Process Will Take 20+ Seconds
- type into the terminal installer `sudo eggs install`
- it will prompt a password type `evolution`
- Click No If You Want To edit a few changes that are incorrect click yes if it is correct
- you will see a summary click the only thing you can do is yes not no
- it will install which will take apprx 2 minutes
- once installed you will have a pc running guestsneezeos (The Wallpaper is default debian wallpaper due to an error well fix it soon)


# Make Custom GuestSneezeOS Based ISO
You Can Use Both your Main Account and Root Account To Do This!!!
- before starting do not use an installed GuestSneezeOS with passwords and user accounts it will be saved in the iso for the next user 
- Open A Terminal Of An Installed Version GuestSneezeOS (Install the apps you want before doing this step)
- Then Type `sudo eggs produce --basename <NAME> --standard` Replace The `<NAME>` With The OS Name For A Liter ISO You Can Change It from `--standard` to `--max` but if you do that it will take longer (recommended on low system storage)
- I recently got feedback from an issue from the Penguin Eggs Developer And You Can Type `sudo eggs tools skel` To Save The Current Wallpaper
- if you want to use an GUI version type this command `sudo eggs calamares --install` but its not recommended
- The default username used by the `live` ISO in this case is `live`, and the password is `evolution`. The root password is the same, `evolution`.
- You Can Find The ISO On The `/home/eggs` folder in your system (also the source code will be there too)
- you can edit the user and passwords and other things in `/etc/penguins-eggs.d/eggs.yaml` as root with a text editor
- If you plan on installing the generated ISO unattended (so using `krill`, the command-line Eggs ISO installer), edit the installation details in the `/etc/penguins-eggs.d/krill.yaml` file

# Supported Games
![Steam](https://img.shields.io/badge/Steam-000000?style=for-the-badge&logo=steam&logoColor=white) 91% Steam Games Are Supported
<br>
![xbox](https://ziadoua.github.io/m3-Markdown-Badges/badges/Xbox/xbox1.svg) Xbox xCloud
<br>
![PS3](https://ziadoua.github.io/m3-Markdown-Badges/badges/PlayStation/playstation1.svg) with RPCS3
<br>
![Nintendo Switch](https://ziadoua.github.io/m3-Markdown-Badges/badges/NintendoSwitch/nintendoswitch1.svg) with yuzu
<br>
![Oracle Java](https://ziadoua.github.io/m3-Markdown-Badges/badges/Java/java3.svg) supports Java applications
# Authors
- GuestSneezePlayz (Project Leader)
- MinecraftToGo (Contributor)
- Xemulat (Contributor)
- pieroproietti (Creating The Penguin Eggs Project)
- The Debian Project (Creating The Debian Linux+GNU)
- You? (Contribute So We Can Stop Mistakes)
- dAKirby309 from [IconArchive.com](https://www.iconarchive.com/artist/dakirby309.html)

# Supported Stuff

Supported Apps
-
- ![Debian](https://ziadoua.github.io/m3-Markdown-Badges/badges/Debian/debian1.svg)
- ![UbUnTU](https://ziadoua.github.io/m3-Markdown-Badges/badges/Ubuntu/ubuntu1.svg)
- ![Linux](https://ziadoua.github.io/m3-Markdown-Badges/badges/Linux/linux1.svg)
- ![Windows via Wine](https://ziadoua.github.io/m3-Markdown-Badges/badges/Windows/windows1.svg)

Supported Computers
-
- ![Raspi](https://ziadoua.github.io/m3-Markdown-Badges/badges/RaspberryPI/raspberrypi1.svg)
- ![Chromebooks](https://ziadoua.github.io/m3-Markdown-Badges/badges/Chrome/chrome3.svg) Check [here](https://wiki.galliumos.org/Hardware_Compatibility) to see supported list 
- ![Windows](https://ziadoua.github.io/m3-Markdown-Badges/badges/Windows/windows1.svg) (UEFI)
- ![Macbooks](https://ziadoua.github.io/m3-Markdown-Badges/badges/macOS/macos3.svg) (Intel)

Functional Browsers
-
- ![Firefox](https://ziadoua.github.io/m3-Markdown-Badges/badges/Firefox/firefox1.svg)
- ![Chrome & Chromium](https://ziadoua.github.io/m3-Markdown-Badges/badges/Chrome/chrome1.svg)
