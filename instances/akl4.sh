#!/bin/sh
/home/steam/Steam/steamcmd.sh +login anonymous +force_install_dir /home/steam/csgo +app_update 740 +quit
/home/steam/csgo/srcds_run -autoupdate -game csgo -usercon -strictportbind -ip xxx.xxx.xxx.xxx -port 27015 -tickrate 128 +clientport 27005 +game_type 0 +game_mode 1 +mapgroup mg_bomb +map de_dust2 +sv_setsteamaccount XXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXXX +sv_minrate 128000 +sv_mincmdrate 128 +sv_minupdaterate 128 +host_players_show 2 +show_info_show 2 +log on +logaddress_add xxx.xxx.xxx.xxx:xxxx +hostname "AKL#4" +sv_hibernate_postgame_delay 120
