#!/bin/bash
# run as sudo clean_install.sh
apt-get update

wget https://download.anydesk.com/linux/anydesk_4.0.0-1_amd64.deb
dpkg -i anydesk_4.0.0-1_amd64.deb

apt-get install -y p7zip p7zip-full

apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb

apt-get install -y nuget

apt-get install -y build-essential
apt-get install -y git

wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb dropbox64.deb
dpkg -i dropbox64.deb
# TODO: install the rest of dropbox automatically

# headless dropbox 
# wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# ~/.dropbox-dist/dropboxd


