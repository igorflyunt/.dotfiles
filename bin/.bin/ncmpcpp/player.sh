#!/bin/sh

POLYBAR_NAME="player_bar"

# kill all instances of ncmpcpp
killall -q ncmpcpp

# Launch ncmpcpp and player bar
termite -e "bash -lic ncmpcpp" -t ncmpcpp &
. ~/.bin/polybar/ipc_player_bar.sh
