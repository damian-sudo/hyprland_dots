#!/bin/bash

WALL_DIR="$HOME/Pictures/Wallpapers"
PREVIEW_DIR="$HOME/Pictures/.cache/wallpaper-previews"

selected=$(ls "$WALL_DIR" | while read -r img; do
    name="${img%.*}"
    echo -en "$img\x00icon\x1f$PREVIEW_DIR/$name.png\n"
done | rofi -dmenu -show-icons -theme ~/.config/rofi/wallpaper.rasi -p "Select Wallpaper")

[ -z "$selected" ] && exit

WALL="$WALL_DIR/$selected"

hyprctl hyprpaper preload "$WALL"
hyprctl hyprpaper wallpaper ",$WALL"

matugen image "$WALL"

pkill waybar && waybar &
hyprctl reload
