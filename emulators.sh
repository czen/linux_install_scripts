#!/bin/bash

sudo apt-add-repository ppa:dolphin-emu/ppa
sudo apt update
sudo apt install -y dolphin-emu
sudo apt-get install -y dosbox
sudo add-apt-repository ppa:libretro/stable && sudo apt-get update -y && sudo apt-get install -y retroarch
# flatpak install flathub org.ppsspp.PPSSPP