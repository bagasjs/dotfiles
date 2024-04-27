#!/usr/bin/env bash

echo "  ____                             _  _____  "
echo " |  _ \                           | |/ ____| "
echo " | |_) | __ _  __ _  __ _ ___     | | (___   "
echo " |  _ < / _  |/ _  |/ _  / __|_   | |\___ \  Bagas Jonathan sitanggang @2023"
echo " | |_) | (_| | (_| | (_| \__ \ |__| |____) | (https://github.com/bagasjs)"
echo " |____/ \__,_|\__, |\__,_|___/\____/|_____/  "
echo "               __/ |                         "
echo "              |___/                          "
if [ "$(id -u)" = 0 ]; then
    echo "This file should not be executed with root user"
fi

echo
echo "-> Installing core packages"
corePackages=(
        "alacritty"
        "firefox"
        "vlc"
        "git"
        "thunar"
        "sddm"
        "neovim"
        "networkmanager"
        "wpa_supplicant"
        "bash"
    )

for package in ${corePackages[@]}
do
    echo $package
done

echo
echo "-> Available Desktop Environment:"
echo " [1] XFCE (Default)              "
echo " [2] Hyprland                    "
echo
while true; do
    read -p "Please choose your window manager: " wm
    case $wm in
        [1]* )
            echo "Installing XFCE"
            break;;
        [2]* )
            echo "Installing Hyprland"
            break;;
        * ) echo "Please choose your desktop environment";;
    esac
done

echo
echo "-> Enabling sddm, networkmanager, and wpa_supplicant services"
# sudo systemctl enable sddm.service
# sudo systemctl enable NetworkManager.service
# sudo systemctl enable wpa_supplicant.service

echo
while true; do
    read -p "-> Do you want to add '.bashrc' (Yy/Nn): " yn
    case $yn in 
        [Yy]* )
            echo "Installing '.bashrc'";
            if [ -f ./.bashrc ]; then
                cp ./.bashrc $HOME/.bashrc
            fi
            break;;
        [Nn]* )
            echo "Not installing '.bashrc'"
            break;;
        * )
            echo "Please answer yes or no";
    esac
done

            
echo
while true; do
    read -p "-> Do you want to add 'Neovim Configurations' (Yy/Nn): " yn
    case $yn in 
        [Yy]* )
            echo "Installing 'Neovim Configurations'";
            if [ ! -d $HOME/.config/nvim/ ]; then
                if [ -d ./init.lua ]; then
                    cp -r ./init.lua $HOME/.config/nvim
                fi
            else
                echo "'~/.config/nvim' directory is already exists"
            fi
            break;;
        [Nn]* )
            echo "Not installing 'Neovim Configurations'"
            break;;
        * )
            echo "Please answer yes or no";
    esac
done
