#!/bin/bash
# run as sudo clean_install.sh
apt-get update

wget https://download.anydesk.com/linux/anydesk_4.0.0-1_amd64.deb
dpkg -i anydesk_4.0.0-1_amd64.deb

apt-get install -y p7zip p7zip-full

apt-get install libxss1 libappindicator1 libindicator7
wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
dpkg -i google-chrome*.deb

apt-get install -y nuget

apt-get install -y build-essential
apt-get install -y git

wget https://www.dropbox.com/download?dl=packages/ubuntu/dropbox_2015.10.28_amd64.deb dropbox64.deb
dpkg -i dropbox64.deb
# TODO: install the rest of dropbox automatically

# headless dropbox 
# wget -O - "https://www.dropbox.com/download?plat=lnx.x86_64" | tar xzf -
# ~/.dropbox-dist/dropboxd

apt-get install -y snap
apt-get install -y snapd
# snap install phpstorm --classic
# snap install intellij-idea-community --classic --edge

# might as well install everything when needed through toolbox manually
wget https://download.jetbrains.com/toolbox/jetbrains-toolbox-1.11.4269.tar.gz
tar -xvzf jetbrains-toolbox-1.11.4269.tar.gz
rm jetbrains-toolbox-1.11.4269.tar.gz

#sublime-text
wget -qO - https://download.sublimetext.com/sublimehq-pub.gpg | apt-key add -
echo "deb https://download.sublimetext.com/ apt/stable/" | tee /etc/apt/sources.list.d/sublime-text.list
apt-get update
apt-get install -y sublime-text

# docker
apt-get install -y \
    apt-transport-https \
    ca-certificates \
    curl \
    software-properties-common

curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add -
apt-key fingerprint 0EBFCD88

add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   bionic \
   stable"

apt-get update
apt-get install -y docker-ce

# skype
apt install -y apt-transport-https
curl https://repo.skype.com/data/SKYPE-GPG-KEY | sudo apt-key add -
echo "deb https://repo.skype.com/deb stable main" | sudo tee /etc/apt/sources.list.d/skypeforlinux.list
apt update
apt install -y skypeforlinux

#mpich
apt-get install -y mpich

#openvpn
apt-get instal -y openvpn

#nvm
wget -qO- https://raw.githubusercontent.com/creationix/nvm/v0.33.11/install.sh | bash
# nvm install 10.10
# nvm use 10.10


# TODO: mono, apache, php, etc.?
# TODO: python, virtualenv, vagrant?


