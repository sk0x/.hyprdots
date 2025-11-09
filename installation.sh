#!/bin/bash

# install aur helper (paru)
cd ~
git clone https://aur.archlinux.org/yay.git
cd yay
makepkg -si

# remove folder
cd ~
rm -rf yay 

# installing apps
sudo pacman -S stow zsh fzf tmux network-manager-applet waybar hyprpaper neovim rofi nwg-look ripgrep
yay -S hyprshot wlogout

# install browser
yay -S brave-bin google-chrome zen-browser-bin

# install docker
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER

# installing ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
