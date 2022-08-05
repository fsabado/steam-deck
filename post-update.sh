#!/usr/bin/env bash
# Disable

set -e

# Disable read-only on steamos
sudo steamos-readonly disable

# Install system packages
sudo pacman-key --init
sudo pacman-key --populate archlinux holo

yay -S \
    base-devel \
    --noconfirm


# Do updates
flatpak update

# Install flatpaks
sudo flatpak install --noninteractive --or-update flathub \
    com.google.Chrome \
    com.microsoft.Edge \
    com.spotify.Client


# Running
flatpak run com.spotify.Client
# Uninstall
# sudo flatpak uninstall NAME
