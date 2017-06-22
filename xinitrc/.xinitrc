#! /bin/bash
setxkbmap -layout us,ua 
xset dpms 0 0 0 
xset s off 
xset s noblank 
setxkbmap -layout us,ua 
setxkbmap -option 'grp:alt_space_toggle' 
xset -b 
numlockx &
pulseaudio --start &
udiskie -a & 
mpd &
unclutter -grab -idle 2 &
exec i3
