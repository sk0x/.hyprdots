#!/bin/bash

echo "Installing Runtime enviorments"
sudo pacman -S nodejs npm jdk-openjdk lua ripgrep

echo "Installing editors/ide's and clients"
sudo pacman -S dbeaver intellij-idea-community-edition

