#!/bin/bash
clear
echo "This scripts backs up the dotfiles and misc requirements"
echo " "
read -p "Press [Enter] key to start backup..."
## Bash add pause prompt for 5 seconds ##
echo " "
read -t 5 -p "I am going to wait Ctrl+C for only 5 seconds...🛑"
echo " "

cp ./bashrc ~/.bashrc

cp -r ./config/rofi/config.rasi ~/.config/rofi/config.rasi

cp -r ./config/hypr/rofi ~/.config/hypr/
cp -r ./config/hypr/scripts ~/.config/hypr/
cp -r ./config/hypr/theme ~/.config/hypr/
cp -r ./config/hypr/wallpapers ~/.config/hypr/
cp -r ./config/hypr/waybar ~/.config/hypr/
cp -r ./config/hypr/wlogout ~/.config/hypr/
cp -r ./config/hypr/wofi ~/.config/hypr/

cp -r ./config/hypr/hyprland.conf ~/.config/hypr/hyprland.conf
cp -r ./config/hypr/hyprtheme.conf ~/.config/hypr/hyprtheme.conf

echo -ne '\007' #pc speaker beep
echo "--------------------------------------------------------------"
echo "All files and folders have been copied over in proper places."