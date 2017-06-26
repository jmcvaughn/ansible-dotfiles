#!/usr/bin/bash

file='/sys/class/leds/smc::kbd_backlight/brightness'
brightness=$(cat $file)

case $1 in
    up)   echo $((brightness + 51)) | sudo tee $file ;;
    down) echo $((brightness - 51)) | sudo tee $file ;;
esac
