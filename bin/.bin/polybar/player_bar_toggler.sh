#!/bin/sh
. ~/.config/polybar/polybar.conf
if [ -e $PLAYER_BAR_PATH ]; then
	echo cmd:toggle > /tmp/$PLAYER_BAR_NAME
fi
