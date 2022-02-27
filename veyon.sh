#!/bin/bash

wget https://github.com/veyon/veyon/releases/download/v4.7.1/veyon_4.7.1-3-ubuntu-focal_amd64.deb
sudo dpkg -i veyon_4.7.1-3-ubuntu-focal_amd64.deb
sudo apt-get install -f