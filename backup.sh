#!/bin/bash
echo "This scripts backs up the dotfiles and misc requirements"
echo " "
read -p "Press [Enter] key to start backup..."
## Bash add pause prompt for 5 seconds ##
read -t 5 -p "I am going to wait Ctrl+C for only 5 seconds...🛑"
echo " "
echo "[COPY] ~/.bashrc to ./bashrc"
cp ~/.bashrc ./bashrc
echo " "

