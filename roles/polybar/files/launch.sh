#!/usr/bin/bash

# Terminate already running bar instances
killall --quiet polybar

# Wait until the processes have been shut down
while pgrep --exact polybar > /dev/null
    do sleep 1
done

# Launch bar
(polybar bar &) &> /dev/null
