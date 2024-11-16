#!/bin/bash

# Wallpaper's directory
wallpaper_dir="$HOME/.config/hypr/background"

sleep 5

# Find all image files (.jpg, .png) in the directory and pick a random one
random_image=$(find "$wallpaper_dir" -type f \( -iname "*.jpg" -o -iname "*.png" \) | shuf -n 1)

# Set the selected image as the wallpaper using swww
swww img "$random_image"

