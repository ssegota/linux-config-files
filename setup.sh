#!/bin/bash

#from official repos
apt install i3
apt install git
apt install vim
apt install gparted
apt install htop
apt install terminator
apt install cmus
apt install ubuntu-restricted-extras
apt install cmake
apt install nitrogen
apt install spyder
apt install spyder3
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
