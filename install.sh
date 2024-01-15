#!/bin/bash
clear
## Variables
_ver="0.4b"                                             #2024-01-15 last
_bck="~/somnius-dotfiles-backup/"                       #unused
_mkr="Lefteris Iliadis <lefteros@outlook.com>"          #unused

## Script start
echo "Somnius dotfiles v$_ver"
echo " "
echo "This scripts backs up the dotfiles and misc requirements"
echo " "
read -p "Press [Enter] key to start the installation process..."
## Bash add pause prompt for 5 seconds ##
echo " "
read -t 3 -p "I am going to wait Ctrl+C for only 3 seconds...🛑"
echo " "
echo " "
echo "Creating a zip of the installed files before replacing them..."

mkdir ~/somnius-dotfiles-backup/ > /dev/null 2> /dev/null

zip -r -9 -q ~/somnius-dotfiles-backup/dotfiles_backup_$(date +"%Y-%m-%d_%H-%M").zip \
~/.bashrc \
~/.config/nwg-drawer \
~/.config/rofi \
~/.config/hypr \
~/Pictures/wallpapers 

echo " "
echo "Current Backups (last 3)"
du -sh ~/somnius-dotfiles-backup/dotfiles_backup*.zip|tail -n 3
echo " "
read -t 2 -p "Now installing files into places..."
cp ./bashrc ~/.bashrc

cp -r ./config/rofi/config.rasi ~/.config/rofi/config.rasi
cp -r ./config/nwg-drawer/drawer.css ~/.config/nwg-drawer/drawer.css

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
echo " "
echo "--------------------------------------------------------------"
echo "All files and folders have been copied over in proper places."
echo " "
#$HOME/.config/hypr/theme/theme.sh --default  ## breaks the waybar
echo "Use the 'theme' icon to re-load hyperland scripts."
echo " "