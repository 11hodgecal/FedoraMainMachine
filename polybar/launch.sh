#!/usr/bin/env bash

# Terminate already running bar instances
killall -q polybar

# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

(sleep 2; polybar bar) &
if [[ $(xrandr -q | grep "HDMI-A-0 connected") ]]; then 
	polybar bar2 &
fi
#(sleep 2; polybar tray) &
