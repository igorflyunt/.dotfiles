#!/bin/sh
notify-send "$(mpc -f '%artist%\n%title%\n' current)" "$(mpc -f '%album%' current)" -u low -i /usr/share/icons/notifications/ncmpcpp.png
