#!/bin/bash

# Wallpaper's directory
wallpaper_dir="$HOME/Pictures/background/"

sleep 2

# Activate swww
swww-daemon &

swww clear-cache &

sleep 2

# Find all image files (.jpg, .png) in the directory and pick a random one
random_image=$(find "$wallpaper_dir" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

swww img "$random_image" &

# Another way to select only the image you prefer

##swww clear-cache

##sleep 1

##swww img $HOME/Pictures/background/background.png &
