#!/bin/bash

flatpak install -y flathub io.github.gitahead.GitAhead
flatpak install -y flathub com.github.arshubham.gitignore
#flatpak install -y flathub com.axosoft.GitKraken
wget https://release.gitkraken.com/linux/gitkraken-amd64.deb
sudo dpkg -i gitkraken-amd64.deb
flatpak install -y flathub rest.insomnia.Insomnia
sudo apt-get install -y kdiff3
sudo apt-get install -y sublime-merge zeal git-extras
sudo apt-get install -y valgrind kcachegrind massif-visualizer
sudo apt-get install -y sasm nasm fasm
flatpak install -y flathub com.getpostman.Postman
wget https://github.com/VSCodium/vscodium/releases/download/1.65.2/codium_1.65.2-1646957649_amd64.deb
sudo apt-get install -y ./codium_1.65.2-1646957649_amd64.deb
flatpak install -y flathub io.github.Figma_Linux.figma_linux
#sudo add-apt-repository ppa:morphis/anbox-support
#sudo apt-get update
#sudo apt install anbox-modules-dkms
#snap install --devmode -- beta anbox