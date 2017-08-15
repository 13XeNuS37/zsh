#!/bin/zsh
# 
# Fedora Updater
# By Peter

# INIT
start=$(date +'%s')

# display the configured software repositories
echo "#################################################################"
sudo dnf repolist

# display advisories about packages
echo "#################################################################"
sudo dnf updateinfo

# check for available package upgrades
echo "#################################################################"
sudo dnf check-update

# display details about packages
# example
# Name        : nodejs-csurf
# sArch        : noarch
# Epoch       : 0
# Version     : 1.1.0
# Release     : 4.fc24
# Size        : 12 k
# Repo        : fedora
# Summary     : CSRF token middleware for Node.js and Connect
# URL         : https://github.com/expressjs/csur
# License     : MIT
# Description : CSRF token middleware for Node.js and Connect.
echo "#################################################################"
sudo dnf info | grep "Name\|sArch\|Epoch\|Version\|Release\|Size\|Repo\|Summary\|URL\|Description" 

# upgrade packages system
echo "#################################################################"
sudo dnf upgrade -y 

# synchronize installed packages to the latest available versions
echo "#################################################################"
sudo dnf distro-sync -y

# remove all unneeded packages that were originally installed as dependencies
echo "#################################################################"
sudo dnf autoremove

# generate the metadata cache
echo "#################################################################"
sudo dnf makecache

# remove cached data
echo "#################################################################"
sudo dnf clean

# runtime
echo "#################################################################"
echo "It tooks $(($(date +'%s') - $start)) seconds"

# good exit
exit 0

