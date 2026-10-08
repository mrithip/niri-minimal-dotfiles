#!/bin/bash

# Set this to the folder that contains your wallpapers
WP_DIR="${HOME}/Pictures/wallpaper"

# Kill any currently running swaybg instances to avoid stacking memory
pkill swaybg

# Pick a random image (jpg, jpeg, or png) from the directory
RANDOM_WP=$(find "$WP_DIR" -type f \( -name "*.jpg" -o -name "*.jpeg" -o -name "*.png" \) | shuf -n 1)

# Run swaybg in the background with the random wallpaper (set to fill the screen)
if [[ -f "$RANDOM_WP" ]]; then
    swaybg -m fill -i "$RANDOM_WP" &
fi
