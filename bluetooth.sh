#!/bin/bash


# Install required packages
sudo pacman -S bluez bluez-utils blueman


# Enable service
sudo systemctl enable --now bluetooth.service

