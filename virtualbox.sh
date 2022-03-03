#!/bin/bash
#sudo apt-get install -y software–properties–common
wget -q https://www.virtualbox.org/download/oracle_vbox.asc -O- | sudo apt-key add –
wget –q https://www.virtualbox.org/download/oracle_vbox_2016.asc -O- | sudo apt-key add -
sudo add-apt-repository "deb http://download.virtualbox.org/virtualbox/debian focal contrib"
sudo apt-get update
sudo apt-get install -y virtualbox-6.1
#sudo apt-get install virtualbox—ext–pack
