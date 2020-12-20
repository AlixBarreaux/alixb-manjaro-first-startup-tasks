#!/bin/bash
# Install a VPN first for more security if you want
# before you download and install the packages.

# <- Hashatgs "#" are disablind the code in order to write
# anything you want in here. If you want to disable a line
# of code, put it at the left of the line you want to disable.
# You must do it for EACH SINGLE line you want to disable.
# Alternatively, you can just remove the line of code.

# If you just want to remove one or several packages you
# can just delete the names with the comma ","
# Example: We don't want leaf and nemo to be installed:
# sudo pacman -S nemo, gparted, firefox, leaf, libreoffice
# Becomes now:
# sudo pacman -S gparted, firefox, libreoffice
# Obviously there must be no space at the end and the beginning
# of the line and no hastag "#" for it to be run.
# Each package name must be separated by a comma ","
# Don't put a comma at the end of the line of code





# ESSENTIAL SYSTEM RELATED PACKAGES
# Upgrade pacman database cache
sudo pacman -Syy
# Upgrade 
sudo pacman -Syu
# Package Builder (for the AUR packages with GIT)
sudo pacman -S base-devel



# SOFTWARE RELATED PACKAGES

# ESSENTIALS FOR ANY USER

# Nemo = File Manager
# Gparted = Disk Manager
# Mozilla Firefox = Web Browser
# Tor Browser = Anonymous Web Browser
# Leaf = Notepad
# LibreOffice = Office Suite
# GIMP = Image and Photograph Editor
# File Roller = Archive manager zip etc...
# VLC = MultiMedia Reader
# Bleachbit = Unused Data Cleaner
# Deluge = Torrent Client
# KsysGuard = ksysguard


sudo pacman -S nemo, gparted, firefox, torbrowser-launcher, leaf, libreoffice, gimp, file-roller, vlc, bleachbit, deluge, ksysguard



# --------------------------------- OPTIONAL --------------------------------- 

# These are additional packages to install


# CUSTOM SOFTWARES

# Atom = Code IDE
# Audacity = Sound Editor
# Bitwarden = Password Manager (Requires Internet)
# Blender = 3D Modelling
# Bless = Hexadecimal Editor
# Discord = Internet Voice/Text Chat Client
# Exiftool = Metadata Editor
# Inkscape = Vector Graphics Editor
# Lutris = Game Compatibility Platform
# LXTerm = Minimalistic Linux Terminal
# OBS = Live Streaming/Video Recording Software
# Steam = Gaming Platform - Special version for Manjaro
# Virtualbox = Virtual Machine Host Program
# Wireshark = Network Protocol Analyzer Tool


sudo pacman -S atom, audacity, bitwarden, blender, bless, discord, exiftool, inkscape, lutris, lxterminal, obs-studio, steam-manjaro, virtualbox, wireshark-qt




# SPECIAL INSTALLATIONS
# RustLang = Rust Programming Language


# Install RustLang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh



# DESKTOP ENVIRONMENTS - The way your Linux looks like
Cinnamon = Windows Like
LXDE = Lightweight, Minimalist, High Performance

sudo pacman -S cinnamon, lxde


# CUSTOM PACKAGES TO REMOVE
sudo pacman -R manjaro-hello