#!/usr/bin/bash

file='/sys/class/backlight/intel_backlight/brightness'
brightness=$(cat $file)

case $1 in
    up) echo $((brightness + 93)) | sudo tee $file ;;
    down)
        if [ "$brightness" -gt 93 ]; then
            echo $((brightness - 93)) | sudo tee $file
        fi
    ;;
esac
