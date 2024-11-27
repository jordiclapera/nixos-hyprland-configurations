#!/bin/bash

# Wallpaper's directory
##wallpaper_dir="$HOME/.config/hypr/background"

sleep 2

swww-daemon & # Activate swww

sleep 2

# Find all image files (.jpg, .png) in the directory and pick a random one
##random_image=$(find "$wallpaper_dir" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

##swww img "$random_image" # Select the image you want
swww clear-cache

sleep 1

swww img $HOME/Pictures/background/background.png &
