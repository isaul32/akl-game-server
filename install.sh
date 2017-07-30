#!/bin/sh

# Run as root
if [ "$(id -u)" != "0" ]; then
    echo "This script must be run as root" 1>&2
    exit 1
fi

echo ---------------------
echo Create user with home
echo ---------------------
useradd -m steam
echo

echo --------------------
echo Install dependencies
echo --------------------
apt-get -y install lib32gcc1
yum -y install glibc libstdc++
yum -y install glibc.i686 libstdc++.i686
pacman -S lib32-gcc-libs --noconfirm
echo

echo ----------------
echo Install SteamCMD
echo ----------------
su -c "./scripts/install-steam.sh" steam

echo ---------------------
echo Install CS:GO configs
echo ---------------------
cp configs/* /home/steam/csgo/csgo/cfg
chown -R steam:steam /home/steam/csgo/csgo/cfg

echo ----------------------
echo Copy example instances
echo ----------------------
cp instances/* /home/steam/instances
chown -R steam:steam /home/steam/instances

echo -----------------
echo Copy systemd unit
echo -----------------
cp systemd/* /etc/systemd/system

echo -------------
echo Start servers
echo -------------
echo configure your instance scripts /home/steam/instances
echo
echo run commands:
echo     systemctl start csgoserver@akl1.service
echo     systemctl start csgoserver@akl2.service
echo     systemctl start csgoserver@akl3.service
echo     systemctl start csgoserver@akl4.service
echo
echo and remember enable systemd units!
