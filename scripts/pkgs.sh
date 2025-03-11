#!/bin/bash

# This script is for install important pkgs

# run script as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi

pacman -Syu --noconfirm
pacman -S --noconfirm fzf neovim zsh starship polkit xorg-xhost hyprpolkitagent   
