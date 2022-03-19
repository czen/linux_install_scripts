#!/bin/bash

sudo apt-get update
wget -O- https://updates.signal.org/desktop/apt/keys.asc | sudo apt-key add -
echo "deb [arch=amd64] https://updates.signal.org/desktop/apt xenial main" | sudo tee -a /etc/apt/sources.list.d/signal-xenial.list
sudo apt update && sudo apt install -y signal-desktop

#wget https://updates.tdesktop.com/tlinux/tsetup.3.5.2.tar.xz
#tar -xf tsetup.3.5.2.tar.xz
#sudo cp -R Telegram /opt/Telegram

sudo apt-get install -y jami wire
#flatpak install -y flathub org.telegram.desktop
sudo apt-get install -y telegram-desktop
wget https://github.com/meetfranz/franz/releases/download/v5.8.0/franz_5.8.0_amd64.deb
sudo apt-get install -y ./franz_5.8.0_amd64.deb