#!/bin/bash

# TODO: fix dropbox
#flatpak install -y flathub com.dropbox.Client
sudo apt-get install -y feedreader
# https://www.dropbox.com/install-linux
wget "https://www.dropbox.com/download?plat=lnx.x86_64" > dropbox.tar.gz
sudo cp dropbox.tar.gz /downloads
cd ~ && wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
#~/.dropbox-dist/dropboxd