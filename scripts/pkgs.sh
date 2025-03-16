#!/bin/bash

# This script is for install important pkgs

# run script as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi

echo "Configuring DNS Server..."
file_path="/etc/resolv.conf"
chattr -i "$file_path"
echo -e "# Cloudflare DNS \nnameserver 1.1.1.1\nnameserver 1.0.0.1" > "$file_path"
chattr +i "$file_path"
echo "DNS configuration completed."

#pacman -Syu --noconfirm
echo "Start install pkgs"
pacman -S --noconfirm --needed fzf neovim zsh starship bluez bluez-utils blueman base-devel hyprpaper hypridle hyprlock swaync waybar tlp

echo "Install fonts "
pacman -S --noconfirm --needed ttf-font-awesome  ttf-nerd-fonts-symbols ttf-dejavu ttf-liberation noto-fonts

echo "Active the services"
echo "Active bluetooth"
sudo systemctl enable bluetooth
sudo systemctl start bluetooth 

