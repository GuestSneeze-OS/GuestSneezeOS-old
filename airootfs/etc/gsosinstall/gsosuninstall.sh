echo "Removing SteamOS Repo"
# Start Removing SteamOS
crudini --del /etc/pacman.conf jupiter
crudini --del /etc/pacman.conf holo
echo "Removing winesapOS"
# Start Removing winesapOS repo
crudini --del /etc/pacman.conf winesapos
pacman -S -y
