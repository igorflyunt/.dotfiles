#!/bin/sh
. ~/.config/polybar/polybar.conf
if [ -e $PLAYER_BAR_PATH ]; then
	echo cmd:quit > /tmp/$PLAYER_BAR_NAME
fi
polybar -r player &
sleep 0.5
ln -fs /tmp/polybar_mqueue.$! /tmp/$PLAYER_BAR_NAME
echo cmd:hide > /tmp/$PLAYER_BAR_NAME
