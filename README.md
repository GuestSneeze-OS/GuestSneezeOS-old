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
**GuestSneezeOS**, a [**Debian-based**](https://www.debian.org/derivatives/) Linux distribution inspired by [**The Other SteamOS Clones**](https://github.com/ChimeraOS/chimeraos/wiki/OS-Comparison), prioritizes performance and simplicity for gaming.Preinstalled with [Steam](https://steam.fandom.com/wiki/Steam), it offers access to a vast game library. With full access to [Debian](https://www.debian.org/) and [SteamOS](https://en.wikipedia.org/wiki/SteamOS) resources, users enjoy stable gaming experiences and access to a wide range of software. Moreover, GuestSneezeOS comes preinstalled with [Wine](https://www.winehq.org/) and [Discord](https://discord.com/), enhancing its versatility for gaming and communication needs. Its user-friendly interface and stability make it ideal for gamers on various hardware setups. **GuestSneezeOS** also offers a Lite version featuring the [**LXDE**](https://lxde.org) environment, providing users with a lightweight and efficient desktop experience tailored to modest hardware configurations and comes with the same things preinstalled with the main version but with a lighter desktop enviorment. This Project Uses ![Shell](https://img.shields.io/badge/Shell_Script-121011?style=for-the-badge&logo=gnu-bash&logoColor=white)

# Requirements
- 1. UEFI Enable Firmware (not legacy)
- 2. At least 2GB of RAM
- 3. A semi-modern CPU (Dual Core)
- 4. An Intel Or AMD GPU (Nvidia Users Coming Soon)
- 5. At least an 8GB USB drive (for the installer)
- 6. At least 10GB of disk space (Main)

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
- if you want to use an GUI version type this command `sudo eggs calamares --install` but its not recommended
- The default username used by the `live` ISO in this case is `live`, and the password is `evolution`. The root password is the same, `evolution`.
- You Can Find The ISO On The `/home/eggs` folder in your system (also the source code will be there too)
<br>
<br>
Some Notes Before ISO Creation
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
