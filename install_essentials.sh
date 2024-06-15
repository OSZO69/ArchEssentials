#!/bin/bash

# Update package lists and upgrade installed packages
sudo pacman -Syu --noconfirm

# Install XFCE desktop environment
sudo pacman -S --noconfirm xfce4 xfce4-goodies

# Install Firefox web browser
sudo pacman -S --noconfirm firefox

# Install Dolphin file manager
sudo pacman -S --noconfirm dolphin

# Install other essential programs
sudo pacman -S --noconfirm \\
    base-devel \\
    curl \\
    git \\
    vim \\
    htop \\
    gnome-disk-utility \\
    gnome-system-monitor \\
    gparted \\
    snapd

# Enable and start Snapd service
sudo systemctl enable --now snapd.socket
sudo ln -s /var/lib/snapd/snap /snap

# Optional: Install common media codecs and plugins
sudo pacman -S --noconfirm \\
    gstreamer \\
    gst-plugins-good \\
    gst-plugins-bad \\
    gst-plugins-ugly \\
    gst-libav

# Optional: Install additional useful tools
sudo pacman -S --noconfirm \\
    vlc \\
    gimp \\
    neofetch \\
    libreoffice-fresh \\
    thunderbird

# Clean up
sudo pacman -Sc --noconfirm

echo "Installation of XFCE, Firefox, Dolphin, and essential programs is complete."
