# GuestSneezeOS
[![Steam](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)
![Release Package Number](https://release-badges-generator.vercel.app/api/releases.svg?user=GuestSneezeOS-Official&repo=GuestSneezeOS&gradient=ff6600,ffe500)
![Untitled](https://github.com/GuestSneezeOS-Official/GuestSneezeOS/assets/163439609/05a2442c-cedc-4bf5-9f73-71d5c1098aaf)

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
- type in the terminal `sudo apt install curl` if curl is not installed
- then type `curl -fsSL https://pieroproietti.github.io/penguins-eggs-ppa/KEY.gpg | sudo gpg --dearmor -o /etc/apt/trusted.gpg.d/penguins-eggs.gpg`
- then type `echo "deb [arch=$(dpkg --print-architecture)] https://pieroproietti.github.io/penguins-eggs-ppa ./" | sudo tee /etc/apt/sources.list.d/penguins-eggs.list > /dev/null`
- then type after that `sudo apt update`
- then type this `sudo apt install eggs`
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
![xbox](https://img.shields.io/badge/Xbox-107C10?style=for-the-badge&logo=xbox&logoColor=white) Xbox xCloud
<br>
![PS3](https://img.shields.io/badge/PlayStation-003791?style=for-the-badge&logo=playstation&logoColor=white) with RPCS3
<br>
![Nintendo Switch](https://img.shields.io/badge/Nintendo_Switch-E60012?style=for-the-badge&logo=nintendo-switch&logoColor=white) with yuzu
<br>
![Oracle Java](https://img.shields.io/badge/Oracle-F80000?style=for-the-badge&logo=oracle&logoColor=black) supports Java applications
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
- ![Debian](https://img.shields.io/badge/Debian-A81D33?style=for-the-badge&logo=debian&logoColor=white)
- ![UbUnTU](https://img.shields.io/badge/Ubuntu-E95420?style=for-the-badge&logo=ubuntu&logoColor=white)
- ![Linux Mint](https://img.shields.io/badge/Linux_Mint-87CF3E?style=for-the-badge&logo=linux-mint&logoColor=white)
- ![tar.gz](https://img.shields.io/badge/Linux-FCC624?style=for-the-badge&logo=linux&logoColor=black)
- ![Lubuntu](https://img.shields.io/badge/Lubuntu-0068C8?style=for-the-badge&logo=lubuntu&logoColor=white)
- ![Zorin](https://img.shields.io/badge/Zorin%20OS-0CC1F3?style=for-the-badge&logo=zorin&logoColor=white)
- ![Windows via Wine](https://img.shields.io/badge/Windows-0078D6?style=for-the-badge&logo=windows&logoColor=white)
- ![Pop_OS!](https://img.shields.io/badge/Pop!_OS-48B9C7?style=for-the-badge&logo=Pop!_OS&logoColor=white)
- ![Kubuntu](https://img.shields.io/badge/Kubuntu-0079C1?style=for-the-badge&logo=kubuntu&logoColor=white)

Supported Computers
-
- Select Models ![Raspi](https://img.shields.io/badge/Raspberry%20Pi-A22846?style=for-the-badge&logo=Raspberry%20Pi&logoColor=white)
- Select Models Of ![Chromebooks](https://img.shields.io/badge/Google_chrome-4285F4?style=for-the-badge&logo=Google-chrome&logoColor=white) Check [here](https://wiki.galliumos.org/Hardware_Compatibility) to see supported list via [GalliumOS](https://wiki.galliumos.org/Hardware_Compatibility)
- ![Asus](https://img.shields.io/badge/acer%20laptop-83B81A?style=for-the-badge&logo=acer&logoColor=white) (UEFI)
- Select Models Of ![Macbooks](https://img.shields.io/badge/Apple%20laptop-333333?style=for-the-badge&logo=apple&logoColor=white)
- ![Dell](https://img.shields.io/badge/dell%20laptop-007DB8?style=for-the-badge&logo=dell&logoColor=white) (UEFI)
- ![HP](https://img.shields.io/badge/hp%20laptop-0096D6?style=for-the-badge&logo=hp&logoColor=white) (UEFI)
- ![Lenovo](https://img.shields.io/badge/lenovo%20laptop-E2231A?style=for-the-badge&logo=lenovo&logoColor=white) (UEFI)
- ![MSI](https://img.shields.io/badge/MSI%20laptop-FF0000?style=for-the-badge&logo=msi&logoColor=white) (UEFI)
-  ![Razer](https://img.shields.io/badge/razer%20laptop-44D62D?style=for-the-badge&logo=razer&logoColor=252525) (UEFI)
- ![Samsung](https://img.shields.io/badge/samsung%20laptop-1428A0?style=for-the-badge&logo=Samsung&logoColor=white) (UEFI)
- ![Xiami](https://img.shields.io/badge/xiaomi%20laptop-FF6900?style=for-the-badge&logo=xiaomi&logoColor=white) (UEFI)

Supported Hardware
-
- ![AMD](https://img.shields.io/badge/AMD%20Radeon_RX_5500-ED1C24?style=for-the-badge&logo=amd&logoColor=white) (ALL AMD processors from 2012 to today
- ![AMD1](https://img.shields.io/badge/AMD%20Ryzen_7_3800X-ED1C24?style=for-the-badge&logo=amd&logoColor=white) (ALL AMD preoccessors from 2012 to today)
- ![I3](https://img.shields.io/badge/Intel%20Core_i5_10th-0071C5?style=for-the-badge&logo=intel&logoColor=white) (Celeron 29500U And Above)
- ![I7](https://img.shields.io/badge/Intel%20Core_i7_10th-0071C5?style=for-the-badge&logo=intel&logoColor=white) (Cleron 29500U And Above)
- ![Nvidia](https://img.shields.io/badge/NVIDIA-GTX1650-76B900?style=for-the-badge&logo=nvidia&logoColor=white)

Functional Browsers
-
- ![Brave](https://img.shields.io/badge/Brave-FF1B2D?style=for-the-badge&logo=Brave&logoColor=white)
- ![Firefox](https://img.shields.io/badge/Firefox_Browser-FF7139?style=for-the-badge&logo=Firefox-Browser&logoColor=white)
- ![Chrome & Chromium](https://img.shields.io/badge/Google_chrome-4285F4?style=for-the-badge&logo=Google-chrome&logoColor=white)
- ![Egde](https://img.shields.io/badge/Microsoft_Edge-0078D7?style=for-the-badge&logo=Microsoft-edge&logoColor=white)

Virtual Machines
-
- ![VMWare](https://img.shields.io/badge/VMware-231f20?style=for-the-badge&logo=VMware&logoColor=white)
- ![VBOX](https://img.shields.io/badge/VirtualBox-21416b?style=for-the-badge&logo=VirtualBox&logoColor=white)
- ![ProxMox](https://img.shields.io/badge/Proxmox-E57000?style=for-the-badge&logo=proxmox&logoColor=white)

