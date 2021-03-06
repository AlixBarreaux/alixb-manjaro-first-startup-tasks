#!/bin/bash

# WARNING: READ EVERYTHING BEFORE YOU DO ANYTHING
# OR UNEXPECTED THINGS COULD HAPPEN!

# Install a VPN first for more security if you want
# before you download and install the packages!

# Tasks are ordered by priority and packages by alphabetical order

# Please verify manually if all the packages are installed correctly
# since it's possible to get some errors. If there are some, this program
# could simply skip to the next package to install and display an error
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

sudo pacman -S lxde



# SOFTWARE RELATED PACKAGES

# ESSENTIALS FOR ANY USER


# Official Packages

# Bleachbit = Unused Data Cleaner
# Deluge = Torrent Client
# Etcher = Flash OS images to SD cards & USB drives
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


sudo pacman -S bleachbit deluge etcher file-roller firefox gimp gparted ksysguard leafpad libreoffice nemo torbrowser-launcher vlc



# Softwares not on official repository
# Open the page of the software to install in firefox web browser
# Warning: You can disable these lines of code to avoid overloading
# your computer's RAM by opening too much tabs in your web browser.
# You can tell this script to use another browser than Firefox to open
# the links you want in several tabs.

#firefox https://www.example-software.com/app-to-install



# --------------------------------- OPTIONAL --------------------------------- 

# These are additional packages to install


# CUSTOM SOFTWARES

# Atom = Code IDE
# Audacity = Sound Editor
# Bitwarden = Password Manager
# Blender = 3D Modelling
# Bless = Hexadecimal Editor
# Brasero = CD/DVD Burner
# Discord = Internet Voice/Text Chat Client
# Git = Version Control System
# Inkscape = Vector Graphics Editor
# KdenLive = Video Editor
# Lutris = Video Game Manager
# LXTerm = Minimalistic Linux Terminal
# Nano = CLI Text Editor
# OBS = Live Streaming/Video Recording Software
# Perl Image Exiftool = Reader and rewriter of EXIF info
# Steam = Gaming Platform - Special version for Manjaro
# Virtualbox = Virtual Machine Host Program
# Wireshark = Network Protocol Analyzer Tool


sudo pacman -S atom audacity bitwarden blender bless brasero discord git inkscape kdenlive lutris lxterminal nano obs-studio perl-image-exiftool steam-manjaro virtualbox wireshark-qt




# SPECIAL INSTALLATIONS
# Flint = Find duplicated files
# RustLang = Rust Programming Language

# Install Flint with its dependencies
# "Won't launch" ( won't display) if
# the depedencies aren't installed

# WARNING: Install MANUALLY python2-gobject2 if
# pytgtk requires it!

sudo pacman -S pygtk
sudo pacman -S flint


# Install RustLang
curl --proto '=https' --tlsv1.2 -sSf https://sh.rustup.rs | sh

# Install some Python Libraries
pip install kivy



# CUSTOM PACKAGES TO REMOVE
# Can display an error message "target not found"
# if the packages you try to uninstall are not installed.
# In that case it's ok just skip

# gnome-terminal = replaced by lxterm
# manjaro-hello = Not needed if not read at all
# microsoft-office-web-jak = Microsoft Office Suite -> DELETE!
# Thunderbird = Mail Client on machine. Replaced by webmail in browser.
# vim = replaced by nano
# xed = replaced by leafpad

sudo pacman -R gnome-terminal
sudo pacman -R manjaro-hello
sudo pacman -R microsoft-office-web-jak
sudo pacman -R thunderbird
sudo pacman -R vim
sudo pacman -R xed