#!/bin/bash
sudo apt-get install -y gdebi
wget https://dbeaver.com/files/dbeaver-ee_latest_amd64.deb
sudo gdebi -n dbeaver-ee_latest_amd64.deb
