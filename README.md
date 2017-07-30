# AKL game servers

## Install
Run install script

    sudo ./install.sh

## Start
Start instances

    systemctl start akl1.service
    systemctl start akl2.service
    systemctl start akl3.service
    systemctl start akl4.service

## Enable units
    systemctl enable akl1.service
    systemctl enable akl2.service
    systemctl enable akl3.service
    systemctl enable akl4.service
    systemctl enable akl-restart.timer

## Links
https://developer.valvesoftware.com/wiki/SteamCMD#Downloading_SteamCMD
https://developer.valvesoftware.com/wiki/Command_Line_Options
