#!/bin/bash

BLUE='\033[0;34m'
PURPLE='\033[0;35m'
BOLD='\e[1m'
UNBOLD='\e[0m'

# Check updates
pac_count=$(checkupdates | wc -l)
aur_count=$(yay -Qum | wc -l)

# Pacman
if [[ $pac_count -gt 0 ]]; then
  echo -e "${BLUE}$(checkupdates)"
  echo -e "${BLUE}󰮯 Pacman: $pac_count packages need to be updated.\n"
else
  echo -e "${BLUE}󰮯 Pacman: Up to date!\n"
fi

# AUR
if [[ $aur_count -gt 0 ]]; then
  echo -e "${PURPLE}$(yay -Qum)"
  echo -e "${PURPLE} AUR: $aur_count packages need to be updated."
else
  echo -e "${PURPLE} AUR: Up to date!"
fi


