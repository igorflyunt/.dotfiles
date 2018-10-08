#!/usr/bin/env sh

. ~/.config/polybar/polybar.conf

# Terminate already running top_bar instance

killall -q polybar

# Wait until the processes have been shut down
while pgrep -x polybar >/dev/null; do sleep 1; done

# Launch bar1 and bar2
polybar -r top_bar &
echo "Bars launched..."
