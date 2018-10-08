#!/bin/sh
. ~/.config/polybar/polybar.conf
killall -q ncmpcpp &
mpc clear &
if [ -e $(readlink -f /tmp/$PLAYER_BAR_NAME) ]; then
	echo cmd:quit > /tmp/$PLAYER_BAR_NAME
fi
