#!/bin/bash

# run script as root
if [[ $EUID -ne 0 ]]; then
   echo "This script must be run as root." 
   exit 1
fi

echo "Configuring DNS Server..."

file_path="/etc/resolv.conf"

echo -e "# Cloudflare DNS \nnameserver 1.1.1.1\nnameserver 1.0.0.1" > "$file_path"

# make file can not modified
chattr +i "$file_path"

# Restart systemd-resolved if it's running
if systemctl is-active --quiet systemd-resolved; then
    systemctl restart systemd-resolved
    echo "systemd-resolved has been restarted."
else
    echo "Warning: systemd-resolved is not active, skipping restart."
fi

echo "DNS configuration completed."

echo "Updating system..."
pacman -Syu --noconfirm

echo "System update completed successfully!"

echo "Install important  pkgs "
pacman -S --noconfirm polkit xorg-xhost hyprpolkitagent git  

echo "install hyprland config"
rm -rf dotfiles

if git clone https://github.com/EMO-X/dotfiles.git; then
    cd dotfiles
    mkdir -p ~/.config
    cp -r hypr ~/.config
    echo "Hyprland configuration installed successfully!"
else
    echo "Error: Failed to clone dotfiles repository."
fi

echo "All tasks completed successfully!"
