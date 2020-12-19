#!/bin/bash
# run as sudo clean_install.sh
apt-get update

wget https://download.anydesk.com/linux/anydesk_6.0.0-1_amd64.deb
sudo dpkg -i anydesk_6.0.0-1_amd64.deb

sudo apt-get install -y p7zip p7zip-full

sudo apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo dpkg -i google-chrome*.deb

sudo apt-get install -y nuget

sudo apt-get install -y build-essential
sudo apt-get install -y git

wget https://linux.dropboxstatic.com/packages/ubuntu/dropbox_2020.03.04_amd64.deb dropbox64.deb
sudo dpkg -i dropbox_2020.03.04_amd64.deb
# TODO: install the rest of dropbox automatically

# headless dropbox 
# wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# ~/.dropbox-dist/dropboxd

sudo apt-get install -y snap
sudo apt-get install -y snapd
# snap install phpstorm --classic
# snap install intellij-idea-community --classic --edge

# might as well install everything when needed through toolbox manually
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.19.7784.tar.gz
tar -xvzf jetbrains-toolbox-1.19.7784.tar.gz
rm jetbrains-toolbox-1.19.7784.tar.gz

#sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
sudo apt-get update
sudo apt-get install -y sublime-text

# docker
#apt-get install -y \
#    apt-transport-https \
#    ca-certificates \
#    curl \
#    software-properties-common

#curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
#apt-key fingerprint 0EBFCD88

#add-apt-repository \
#   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
#   bionic \
#   stable"

#apt-get update
#apt-get install -y docker-ce
# TODO: install docker properly

# skype
sudo apt install -y apt-transport-https
curl https://repo.skype.com/data/SKYPE-GPG-KEY | apt-key add -
echo "deb https://repo.skype.com/deb stable main" | tee /etc/apt/sources.list.d/skypeforlinux.list
sudo apt update
sudo apt install -y skypeforlinux

#mpich
sudo apt-get install -y mpich

#openvpn
sudo apt-get instal -y openvpn

#nvm
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.37.2/install.sh | bash
# nvm install 10.10
# nvm use 10.10

# already have mono in default Mint 19 distro
sudo apt install -y mono-xbuild

# DBeaver
sudo apt-get install -y gdebi
wget https://dbeaver.io/files/7.3.0/dbeaver-ce_7.3.0_amd64.deb
# gdebi -y dbeaver_3.0.1_amd64.deb
# gdebi: error: no such option: -y
sudo gdebi dbeaver-ce_7.3.0_amd64.deb

# Docker compose
# https://docs.docker.com/compose/install/#install-compose
#curl -L "https://github.com/docker/compose/releases/download/1.22.0/docker-compose-$(uname -s)-$(uname -m)" -o /usr/local/bin/docker-compose
#chmod +x /usr/local/bin/docker-compose

# TODO: apache, php, etc.?
# TODO: python, virtualenv, vagrant?


