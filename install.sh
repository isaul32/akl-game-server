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

echo ----------------------
echo Copy example instances
echo ----------------------
cp instances-scripts/* /home/steam/instances
chown -R steam:steam /home/steam/instances

echo -----------------
echo Copy systemd unit
echo -----------------
cp systemd-scripts/csgoserver@.service /etc/systemd/system
