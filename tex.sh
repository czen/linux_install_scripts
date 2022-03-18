#!/bin/bash
#wget https://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
#tar -xvf install-tl-unx.tar.gz
#today=$(date +"%Y%m%d")
#cd install-tl-$today
#sudo ./install-tl
sudo apt-get install -y texlive-full
sudo apt-get install -y texmaker kile
flatpak install -y flathub com.github.rogercrocker.badabib