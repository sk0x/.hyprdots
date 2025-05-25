#!/bin/bash

# install aur helper (paru)
cd ~
git clone https://aur.archlinux.org/paru.git
cd paru
makepkg -si

# remove folder
cd ~
rm -r paru

# installing apps 
sudo pacman -S stow zsh fzf tmux network-manager-applet waybar hyprpaper neovim rofi
paru -S hyprshot wlogout

# Change shell to zsh
chsh -s $(which zsh)

# installing ohmyzsh
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

# install browser
paru -S brave-bin google-chrome zen-browser-bin

# install docker
sudo pacman -S docker
sudo systemctl start docker.service
sudo systemctl enable docker.service
sudo usermod -aG docker $USER


