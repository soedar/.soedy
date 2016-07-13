#!/bin/sh
killall compton
xrandr --output VIRTUAL1 --off --output eDP1 --mode 1920x1080 --pos 0x128 --rotate normal --output DP1 --off --output HDMI2 --off --output HDMI1 --off --output DP2 --mode 1024x768 --pos 1920x128 --rotate normal
compton -b --backend glx --vsync opengl
