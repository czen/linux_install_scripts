#!/bin/bash
sudo apt-get install -y gdebi
wget https://dbeaver.io/files/dbeaver-ce_latest_amd64.deb
sudo gdebi -n dbeaver-ce_latest_amd64.deb
