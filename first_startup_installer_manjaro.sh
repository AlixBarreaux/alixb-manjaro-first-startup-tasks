#!/bin/bash

# THERE ARE CUSTOM PACKAGES YOU WON'T NECESSARILY NEED!
# PLEASE REVIEW THIS SCRIPT FOR YOUR OWN NEEDS!

# CHECK YOUR DOWNLOADS FOLDER SINCE THIS SCRIPT WILL USE IT!

# Install a VPN first for more security if you want
# before you download and install the packages!

# Tasks are ordered by section in by order of priority
# Packages are ordered by alphabetical order

# Please verify manually if all the packages are installed correctly
# since it's possible to get some errors. If there are some, this program
# could simply skip to the next package to install and display an error
# message in the terminal.

# DO NOT MODIFY THIS SECTION
# Fetches the username of the OS to use it in paths later
username=$(whoami)


# --------------------------------- ESSENTIAL SYSTEM RELATED PACKAGES ---------------------------------

# Pacman: Force synchronization of repository databases
sudo pacman -Syy

# Sunchronize package databases and fully upgrade the system
sudo pacman -Syu

# Install Package Builder (for the AUR packages with GIT)
sudo pacman -S base-devel





# --------------------------------- ESSENTIALS FOR ANY USER ---------------------------------


# OFFICIAL PACKAGES

# BleachBit = File System and Disk Space Cleaner
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


# --------------------------------- OPTIONAL ---------------------------------

# These are additional custom packages you won't necessarily need from now on


# --------- PACKAGES FROM PACKAGE MANAGERS ---------

# Aegisub = Subtitle Editor
# AppImage Launcher = elper for integrating Appimages
# Atom = Code IDE
# Audacity = Sound Editor
# Bitwarden = Password Manager
# Blender = 3D Modelling
# Bless = Hexadecimal Editor
# Brasero = CD/DVD Burner
# Clipgrab = Video / Audio Downloader
# Flatpak = Package Manager
# Git = Version Control System
# Inkscape = Vector Graphics Editor
# Lutris = Video Game Manager
# OBS = Live Streaming/Video Recording Software
# Perl Image Exiftool = Reader and rewriter of EXIF info
# Persepolis = Download Manager
# Poedit = Translation Editor
# Shotcut = Video Editor
# Steam = Gaming Platform - Special version for Manjaro
# Virtualbox = Virtual Machine Host Program
# Wireshark = Network Protocol Analyzer Tool


# Pacman
sudo pacman -S aegisub appimagelauncher  atom audacity bitwarden blender bless brasero clipgrab flatpak git inkscape lutris obs-studio perl-image-exiftool persepolis poedit shotcut steam-manjaro vim virtualbox wireshark-qt

# Flatpak
flatpak install libresprite vscodium


# --------- PACKAGES FROM EXTERNAL SOURCES ---------


cd /home/$username/Downloads
# NOTE: SHOULD ADD A CHECK IF THIS FILENAME ALREADY EXISTS
# AND FIND ANOTHER NAME (Very low probability it happens though)
# Should also try to know if folders exist
mkdir First_Startup_Tasks_Downloads
cd First_Startup_Tasks_Downloads


# Dragon Unpacker
wget https://deac-fra.dl.sourceforge.net/project/dragonunpacker/Developers%20Tools/DLNG%20Decompiler/4.0.0%20Beta/dlngd400beta.7z
#FileOptimizer
wget https://freefr.dl.sourceforge.net/project/nikkhokkho/FileOptimizer/15.30.2661/FileOptimizerSetup.exe
# Lightcord
wget https://github.com/Lightcord/Lightcord/releases/download/v0.1.9/lightcord-linux-x86_64.AppImage



# --------- SPECIAL INSTALLATIONS ---------


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



# CUSTOM PACKAGES TO REMOVE
# Can display an error message "target not found"
# if the packages you try to uninstall are not installed.
# In that case it's ok just skip

# manjaro-hello = Not needed if not read at all
# microsoft-office-web-jak = Microsoft Office Suite
# Nano =  CLI Text Editor
# Thunderbird = Mail Client on machine. Replaced by webmail in browser.
# xed = replaced by leafpad

sudo pacman -R manjaro-hello microsoft-office-web-jak nano thunderbird xed
