# GuestSneezeOS
[![Steam](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)](https://img.shields.io/badge/steam-%23000000.svg?style=plastic&logo=steam&logoColor=white)
[![Linux](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)](https://img.shields.io/badge/Linux-FCC624?style=plastic&logo=linux&logoColor=black)
![Release Package Number](https://release-badges-generator.vercel.app/api/releases.svg?user=GuestSneezeOS-Official&repo=GuestSneezeOS&gradient=ff6600,ffe500)
![GuestSneezeOS](https://github.com/GuestSneezeOS-Official/GuestSneezeOS/assets/163439609/05a2442c-cedc-4bf5-9f73-71d5c1098aaf)
![GitHub License](https://img.shields.io/github/license/GuestSneezeOS-Official/GuestSneezeOS) ![BuildISO](https://img.shields.io/badge/Build_ISO_-Passing-green)
<br>
**TABLES OF CONTENTS**
- [About GuestSneezeOS](#about)
- [System Requirements](#requirements)
- [Passwords](#passwords)
- [How To Install GuestSneezeOS](#how-to-install-guestsneezeos)
- [Make Custom GuestSneezeOS Based ISO](#make-custom-guestsneezeos-based-iso)
- [Authors And Contributors](#authors)

> [!WARNING]  
> This Projects Is In Its EARLY STAGES and there Will Be Alot Of TE Versions (Also Known As TEST Versions) It Is HIGHLY Recommended To Use Stable Versions.


> [!TIP]
> Remember SDA Is The C: Drive And SDB Is D: Drive Make Sure To Use The Drive You Want To Install It In (Not In FlashDrive)



# About
**GuestSneezeOS** is a Linux Distribution based on Debian 12 and SteamOS 2, It uses the [Penguin-Eggs Projec](https://github.com/pieroproietti/penguins-eggs#readme) and comes with various commands such as `shutdown`,`apt` and many more Debian 12 (or before) commands.Comes Preinstalled with [Steam](https://store.steampowered.com/).This OS supports over Low-End to High-End computers Such As : [Microsoft Surface](https://www.microsoft.com/en-us/surface),[Acer Swift X 16](https://www.acer.com/us-en),and [Most Chromebooks](https://wiki.mrchromebox.tech/Supported_Devices) and more.Its an alternative to other SteamOS-Based or SteamOS-Clones For Low-End Computers such as Chromebooks.

# Requirements
- 1. UEFI Enable Firmware (not legacy)
- 2. At least 2GB of RAM
- 3. A semi-modern CPU (Dual Core)
- 4. An Intel Or AMD GPU (Nvidia Users Coming Soon)
- 5. At least an 8GB USB drive (for the installer)
- 6. At least 11GB of disk space (GuestSneezeOS 6.10 not GuestSneezeOS 6)

# Passwords

|GuestSneezeOS Ver   | Username           | Passwords          |
|--------------------| ------------------ | ------------------ |
|7.10-?              | gamer              | gaming             |
|6.0.0-7.0.0         | live               | evolution          |

# How To Install GuestSneezeOS
Here is a link to a [tutorial as a video](https://www.youtube.com/watch?v=BmhSwH5yaYI&feature=youtu.be) To Install 6.0.0 - 7.0.0
- 1.Select Text Mode In The GRUB Boot
- 2.Login With The User As `gamer` or `root`
- 3.It Will Prompt A Password type if you set the user as `gamer` Then Use `gaming` If The You Chose `root` type `root`
- 4.Type the Command if you chose `gamer` do `sudo eggs install` if you chose `root` you can do `sudo eggs install` or `eggs install`  


# Make Custom GuestSneezeOS Based ISO

> [!CAUTION]
> Sometimes The ISO's Can Get Corrupted Or Have Errors While Booting (Such As Wiping SSD And Not Booting) But This Is Rare If There Are Issues Please Report Them [Here](https://github.com/pieroproietti/penguins-eggs/issues/new)

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



