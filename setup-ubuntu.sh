#!/bin/bash

sudo add-apt-repository ppa:webupd8team/java
sudo add-apt-repository ppa:webupd8team/sublime-text-2

sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv-keys D2C19886
echo deb http://repository.spotify.com stable non-free | sudo tee /etc/apt/sources.list.d/spotify.list

sudo apt-get update

sudo apt-get install vlc mc openvpn openconnect network-manager-openconnect network-manager-openconnect-gnome git oracle-java7-installer oracle-java8-installer oracle-java8-set-default maven vim htop p7zip-full p7zip-rar chromium-browser scala spotify-client meld sublime-text nautilus-compare

echo "Cleaning Up" &&
sudo apt-get -f install &&
sudo apt-get autoremove &&
sudo apt-get -y autoclean &&
sudo apt-get -y clean
