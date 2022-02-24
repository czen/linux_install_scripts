#!/bin/bash

sudo mv /etc/apt/preferences.d/nosnap.pref ~/nosnap.backup
sudo apt update
sudo apt install -y snapd
sudo snap install hello-world