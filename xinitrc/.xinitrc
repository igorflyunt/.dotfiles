#! /bin/bash
xset dpms 0 0 0 
xset s off 
xset s noblank 
setxkbmap -layout us,ua 
setxkbmap -option 'grp:alt_space_toggle' 
xset -b 
numlockx &
#pulseaudio --start &
udiskie -t -a & 
mpd &
unclutter -grab -idle 2 &
dbus-update-activation-environment --systemd DISPLAY &
eval $(/usr/bin/gnome-keyring-daemon --start --components=secrets)
sleep 3 && skypeforlinux &
exec i3 
