#!/bin/bash
clear
echo "This scripts backs up the dotfiles and misc requirements"
echo " "
read -p "Press [Enter] key to start backup..."
## Bash add pause prompt for 5 seconds ##
echo " "
read -t 5 -p "I am going to wait Ctrl+C for only 5 seconds...🛑"
echo " "

cp ~/.bashrc ./bashrc

[ -d "./config" ] && echo "[STAT] ./config exists" || echo "[ERRR] Directory ./config does NOT exist, creating." && mkdir ./config

[ -d "./config/rofi" ] && echo "[STAT] ./config/rofi/ exists, removing.." && rm -rf ./config/rofi || echo "[ERRR] Directory ./config/rofi/ does NOT exist, creating." && mkdir ./config/rofi
cp -r ~/.config/rofi/config.rasi ./config/rofi/config.rasi

[ -d "./config/hypr/" ] && echo "[STAT] ./config/hypr/ exists" || echo "[ERRR] Directory ./config/hypr/ does NOT exist, creating." && mkdir ./config/hypr

cp -r ~/.config/hypr/rofi ./config/hypr/rofi
cp -r ~/.config/hypr/scripts ./config/hypr/scripts
cp -r ~/.config/hypr/theme ./config/hypr/theme
cp -r ~/.config/hypr/wallpapers ./config/hypr/wallpapers
cp -r ~/.config/hypr/waybar ./config/hypr/waybar
cp -r ~/.config/hypr/wlogout ./config/hypr/wlogout
cp -r ~/.config/hypr/wofi ./config/hypr/wofi

cp -r ~/.config/hypr/hyprland.conf ./config/hypr/hyprland.conf
cp -r ~/.config/hypr/hyprtheme.conf ./config/hypr/hyprtheme.conf

echo -ne '\007' #pc speaker beep
echo "--------------------------------------------------------------"
echo "All files and folders have been backed up."