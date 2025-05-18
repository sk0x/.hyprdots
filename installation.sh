#!/bin/bash

# taking input for package manager
read -p "Yay(1) or paru(2): " name

# install yay or paru
if [$name == "1"]; then
    # install yay
    cd ~
    git clone https://aur.archlinux.org/yay.git
    cd yay
    makepkg -si
else
    # install paru
    cd ~
    git clone https://aur.archlinux.org/paru.git
    cd paru
    makepkg -si
fi

# installing tools
sudo pacman -S stow zsh fzf tmux network-manager-applet waybar wlogout hyprpaper nvim
yay -S hyprshot

# install docker
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enalble docker.service
sudo usermod -aG docker $USER

# install browser
yay -S brave-bin google-chrome zen-browser-bin

