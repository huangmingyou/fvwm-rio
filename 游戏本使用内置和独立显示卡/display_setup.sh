#!/bin/sh
# put in /etc/lightdm/
xrandr --setprovideroutputsource modesetting NVIDIA-0
xrandr --output HDMI-0 --primary --mode 2560x1440 --pos 2560x0 --rotate normal --output eDP-1-1 --mode 2560x1440 --pos 0x0 --rotate normal --gamma 0.8:0.8:0.8
