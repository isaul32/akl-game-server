#!/bin/sh

# Make dirs
mkdir ~/Steam && mkdir ~/csgo && mkdir ~/instances
cd ~/Steam

# Download SteamCMD and extract it
curl -sqL "https://steamcdn-a.akamaihd.net/client/installer/steamcmd_linux.tar.gz" | tar zxvf -

# Install CS:GO
./steamcmd.sh +login anonymous +force_install_dir $HOME/csgo +app_update 740 validate +quit
