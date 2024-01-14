#!/bin/bash

if [[ ! -d "$HOME/.local/lib/waybar-btc" ]]; then
  echo -e "\nFirst time installing. Creating ~/.local/lib/waybar-btc...\n"
  mkdir -p ~/.local/lib/waybar-btc
  read -p "CMC API Key: " KEY
  if [[ KEY == "" ]]; then
    echo -e "\nCMC Key cannot be empty... exiting...\n"
    exit 1
  fi
  echo -e "\nCreating .env file...\n"
  echo "CMC_KEY=$KEY" > ~/.local/lib/waybar-btc/.env
  echo -e "\nInstalling waybar-btc\n"
else
  echo -e "\nwaybar-btc exists. Updating...\n"
fi

cp getPrice.py ~/.local/lib/waybar-btc/

echo -e "\nDONE\n"
