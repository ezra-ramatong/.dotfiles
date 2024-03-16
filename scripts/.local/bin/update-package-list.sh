#!/bin/bash

BLUE='\033[0;34m'

sudo pacman -Qqen > ~/.dotfiles/pacman/packages.txt
sudo pacman -Qqem > ~/.dotfiles/pacman/aur_packages.txt

echo -e "${BLUE}Done!"
