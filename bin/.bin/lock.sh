#!/usr/bin/env bash

icon="$HOME/.xlock/icon.png"
tmpbg='/tmp/screen.png'

scrot "$tmpbg"
convert "$tmpbg" -scale 10% -scale 1000% "$tmpbg"
convert "$tmpbg" "$icon" -gravity center -composite -matte "$tmpbg"
play () {
	mpc play
}
trap play HUP INT TERM
mpc pause
i3lock -n -u -i "$tmpbg"
play
