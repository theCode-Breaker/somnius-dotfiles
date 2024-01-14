#!/bin/bash
echo "This scripts backs up the dotfiles and misc requirements"
echo " "
read -p "Press [Enter] key to start backup..."
## Bash add pause prompt for 5 seconds ##
echo " "
read -t 5 -p "I am going to wait Ctrl+C for only 5 seconds...🛑"
echo " "
echo "[COPY] ~/.bashrc to ./bashrc"
cp ~/.bashrc ./bashrc
echo " "
echo "[COPY] ~/.config/rofi to ./config/rofi"
cp -r ~/.config/rofi ./config/rofi
echo " "
[ -d "./config/hypr/" ] && echo "[STAT] ./config/hypr/ exists." || echo "[ERRR] Directory ./config/hypr/ does NOT exist, creating." && mkdir ./config/hypr
echo " "
echo "[COPY] ~/.config/hypr/scripts to ./config/hypr/scripts"
cp -r ~/.config/hypr/scripts ./config/hypr/scripts
echo " "
echo "[COPY] ~/.config/hypr/theme to ./config/hypr/theme"
cp -r ~/.config/hypr/theme ./config/hypr/theme
echo " "
echo "[COPY] ~/.config/hypr/wallpapers to ./config/hypr/wallpapers"
cp -r ~/.config/hypr/wallpapers ./config/hypr/wallpapers
echo " "
echo "[COPY] ~/.config/hypr/waybar to ./config/hypr/waybar"
cp -r ~/.config/hypr/waybar ./config/hypr/waybar
echo " "
echo "[COPY] ~/.config/hypr/wlogout to ./config/hypr/wlogout"
cp -r ~/.config/hypr/wlogout ./config/hypr/wlogout
echo " "
echo "[COPY] ~/.config/hypr/wofi to ./config/hypr/wofi"
cp -r ~/.config/hypr/wofi ./config/hypr/wofi
echo " "
echo "[COPY] ~/.config/hypr/hyprland.conf to ./config/hypr/hyprland.conf"
cp -r ~/.config/hypr/hyprland.conf ./config/hypr/hyprland.conf
echo " "
echo "[COPY] ~/.config/hypr/hyprtheme.conf to ./config/hypr/hyprtheme.conf"
cp -r ~/.config/hypr/hyprtheme.conf ./config/hypr/hyprtheme.conf
echo " "
echo "[COPY] ~/.config/rofi to ./config/rofi"
cp -r ~/.config/rofi ./config/rofi

echo -ne '\007' #pc speaker beep
echo " "
echo "--------------------------------------------------------------"
echo " "
echo "All files and folders have been backed up."
echo " "
echo " "
