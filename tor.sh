#!/bin/bash

sudo add-apt-repository -y ppa:micahflee/ppa
sudo apt update
sudo apt install -y torbrowser-launcher
# TODO: install without gui
# install not under root
#torbrowser-launcher