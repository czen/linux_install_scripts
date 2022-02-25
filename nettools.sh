#!/bin/bash

sudo apt-get install -y nmap ettercap-graphical wget curl openvpn
echo "wireshark-common wireshark-common/install-setuid boolean true" | sudo debconf-set-selections
sudo DEBIAN_FRONTEND=noninteractive apt-get -y install wireshark