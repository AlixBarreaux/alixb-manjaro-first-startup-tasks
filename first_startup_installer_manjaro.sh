#!/bin/bash
# Install a VPN first for more security if you want
# before you download and install the packages!

# Tasks are ordered by priority and packages by alphabetical order

# Please verify manually if all the packages are installed correctly
# since it's possible to get some errors. If there are some, this program
# could simply skip to the next package to install and return an error
# message in the terminal.




# ESSENTIAL SYSTEM RELATED PACKAGES
# Upgrade pacman database cache
sudo pacman -Syy
# Upgrade 
sudo pacman -Syu
# Package Builder (for the AUR packages with GIT)
sudo pacman -S base-devel



# DESKTOP ENVIRONMENTS - The way your Linux looks like
# Cinnamon = Windows Like (but without the problems of Windows of course)
# LXDE = Lightweight, Minimalist, High Performance

# Please remove the desktop environment you already installed
# from this line of code

sudo pacman -S cinnamon lxde cinnamon



# SOFTWARE RELATED PACKAGES

# ESSENTIALS FOR ANY USER


# Official Packages

# Bleachbit = Unused Data Cleaner
# Deluge = Torrent Client
# File Roller = Archive manager zip etc...
# Firefox = Web Browser
# GIMP = Image and Photograph Editor
# Gparted = Disk Manager
# KsysGuard = ksysguard
# Leafpad = Notepad
# LibreOffice = Office Suite
# Nemo = File Manager
# Tor Browser = Anonymous Web Browser
# VLC = MultiMedia Reader


sudo pacman -S bleachbit deluge file-roller firefox gimp gparted ksysguard leafpad libreoffice nemo torbrowser-launcher vlc



# Softwares not on official repository
# Open the page of the software to install in firefox web browser
# Warning: You can disable these lines of code to avoid overloading
# your computer's RAM by opening too much tabs in your web browser.
# You can tell this script to use another browser than Firefox to open
# the links you want in several tabs.

# Balena Etcher

firefox https://www.balena.io/etcher



# --------------------------------- OPTIONAL --------------------------------- 

# These are additional packages to install


# CUSTOM SOFTWARES

# Atom = Code IDE
# Audacity = Sound Editor
# Bitwarden = Password Manager
# Blender = 3D Modelling
# Bless = Hexadecimal Editor
# Discord = Internet Voice/Text Chat Client
# Exiftool = Metadata Editor
# Inkscape = Vector Graphics Editor
# KdenLive = Video Editor
# Lutris = Game Compatibility Platform
# LXTerm = Minimalistic Linux Terminal
# Nano = CLI Text Editor
# OBS = Live Streaming/Video Recording Software
# Steam = Gaming Platform - Special version for Manjaro
# Virtualbox = Virtual Machine Host Program
# Wireshark = Network Protocol Analyzer Tool


sudo pacman -S atom audacity bitwarden blender bless discord exiftool inkscape kdenlive lutris lxterminal nano obs-studio steam-manjaro virtualbox wireshark-qt




# SPECIAL INSTALLATIONS
# RustLang = Rust Programming Language


# Install RustLang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install some Python Libraries
pip install kivy



# CUSTOM PACKAGES TO REMOVE
# Can display an error message "target not found"
# if the packages you try to uninstall are not installed.
# In that case it's ok just skip

sudo pacman -R manjaro-hello
sudo pacman -R vim

# NOTES FOR NEXT SCRIPT'S UPDATE
# Remove thunderbird since attachments are downloaded automatically on the
# computer. Better use the webmail services so that files containing
# potential malwares stay on the server rather than on the computer itself.