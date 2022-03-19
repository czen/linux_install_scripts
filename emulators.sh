#!/bin/bash

sudo apt-add-repository -y ppa:dolphin-emu/ppa
sudo apt update
sudo apt install -y dolphin-emu
sudo apt-get install -y dosbox
sudo add-apt-repository -y ppa:libretro/stable && sudo apt-get update
sudo apt-get install -y retroarch
flatpak install -y --noninteractive flathub org.ppsspp.PPSSPP
sudo apt-get install -y scummvm
