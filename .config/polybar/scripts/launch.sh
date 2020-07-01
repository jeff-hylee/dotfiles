#!/usr/bin/env sh

if test "$#" -ne 1; then
    echo "Please specify polybar to be launched."
    exit 1
fi

# Terminate already running bar instances
killall -q polybar
 
# Wait until the processes have been shut down
while pgrep -u $UID -x polybar >/dev/null; do sleep 1; done

sleep 2

# Launch bar
if type "xrandr"; then
  for m in $(xrandr --query | grep " connected" | cut -d" " -f1); do
    MONITOR=$m polybar --reload $1 &
  done
else
  polybar --reload $1 &
fi
 
echo "Bar launched"
