#!/bin/bash

sudo apt install -y python3-setuptools python3-pyqt5 python3-pip
sudo pip3 install https://download.electrum.org/3.1.3/Electrum-3.1.3.tar.gz
sudo add-apt-repository -y ppa:bitcoin/bitcoin
sudo apt-get update
sudo apt-get install -y bitcoin-qt