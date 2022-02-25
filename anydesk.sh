#!/bin/bash

#wget https://download.anydesk.com/linux/anydesk_6.1.1-1_amd64.deb
#sudo apt install ./anydesk_6.1.1-1_amd64.deb
wget -qO - https://keys.anydesk.com/repos/DEB-GPG-KEY | sudo apt-key add -
echo "deb http://deb.anydesk.com/ all main" | sudo tee -a /etc/apt/sources.list.d/anydesk-stable.list
sudo apt update
sudo apt install -y anydesk