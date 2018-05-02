#!/bin/bash

#from official repos
apt install i3 git vim gparted htop terminator cmus ubuntu-restricted-extras cmake nitrogen spyder spyder3 acpi
#apt install i3                            #window manager
#apt install git                           #version control software
#apt install vim                           #text editor
#apt install gparted                       #disk utility
#apt install htop                          #resource monitoring
#apt install terminator                    #terminal emulator
#apt install cmus                          #terminal music player
#apt install ubuntu-restricted-extras      #https://en.wikipedia.org/wiki/Ubuntu-restricted-extras
#apt install cmake                         #software builder utility
#apt install nitrogen                      #wallpaper engine
#apt install spyder                        #python IDE, gets numpy, matplotlib, scipy as deps
#apt install spyder3                       #python3 IDE
#apt install vlc                           #video player
#apt install gdebi                         #deb installation utility
#apt install acpi                          #battery info

#Embeeded systems
apt install openssh-server qemu qemu-user-static binmft-support build-essential libncurses5-dev libssl-dev kernel-package fakeroot
#--------------------
#i3 gaps
#--------------------

#dependancies
apt install libxcb1-dev libxcb-keysyms1-dev libpango1.0-dev libxcb-util0-dev libxcb-icccm4-dev libyajl-dev libstartup-notification0-dev libxcb-randr0-dev libev-dev libxcb-cursor-dev libxcb-xinerama0-dev libxcb-xkb-dev libxkbcommon-dev libxkbcommon-x11-dev autoconf xutils-dev libtool

add-apt-repository ppa:aguignard/ppa
apt-get update
apt-get install libxcb-xrm-dev

#clone the repo and install

mkdir ~/temp
cd temp

git clone https://www.github.com/Airblader/i3 i3-gaps
cd i3-gaps

autoreconf --force --install
rm -rf build/
mkdir -p build && cd build/

../configure --prefix=/usr --sysconfdir=/etc --disable-sanitizers
make
make install

#--------------------
#SETUP ENV
#--------------------
#All aditional setup goes here
#nautilus setup - removes it as desktop manager, makes it possible to use with i3
gsettings set org.gnome.desktop.background show-desktop-icons false


#cleanup
cd ~
rm -rf temp
