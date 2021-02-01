#!/bin/bash

# Rotate Wallpaper BG
# Install this in crontab

TIME=$(date +%H:%M:%S)
DATE=$(date +%a-%b-%d)
WALLPAPER_DIR=/home/gh0st/Pictures/Wallpapers
IMAGE=$(ls $WALLPAPER_DIR | shuf -n 1)

echo $DATE
echo $TIME
echo "Changing BG Image to $IMAGE"
gsettings set org.gnome.desktop.background picture-uri file://$WALLPAPER_DIR/$IMAGE

exit



