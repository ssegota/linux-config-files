# Linux Config Files

This is a repo containing some of the more important config files for my Linux environment, as well as a setup script that contains some programs that I like installing.
The point is to enable a quick setup when reinstalling the OS. The script is made for ubuntu and uses apt.

## config files

Repo contains configuration files for:
* vim
* bash
* i3
* i3status
* terminator

## setup.sh

setup.sh installs following software:
* vim
* git
* gparted
* i3
* i3 gaps
* htop
* terminator
* cmake
* cmus
* ubuntu-restricted-extras
* spyder
* spyder3
* vlc
* acpi

## Scripts

.battnotif script notifies when battery is nearing empty, using acpi. Add this line to cron using `crontab -e` to run it every 10 minutes.

` */10 * * * * ~/.battnotif`

