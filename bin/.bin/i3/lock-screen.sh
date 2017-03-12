#!/bin/bash
ICON=$HOME/.screen-lock.png
TMPBG=/tmp/screen.png
scrot /tmp/screen.png
#convert $TMPBG -blur 0x20 $TMPBG
convert $TMPBG $ICON -gravity center -composite $TMPBG
i3lock -i $TMPBG
