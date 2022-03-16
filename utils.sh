#!/bin/bash
sudo apt-get install -y build-essential locate patool default-jre python3-pip nodejs npm
sudo apt-get install -y git git-gui git-all
sudo apt-get install -y graphviz filezilla keepassx flameshot copyq gnucash
sudo apt-get install -y konsole terminator fish meld screen htop mc nfs-common mcedit kate vlc smartmontools krusader geany ffmpeg
sudo apt-get install -y lollypop clementine cmus
sudo apt-get install -y smlnj okular djview lyx bleachbit fbreader
sudo apt-get install -y ruby-full rustc golang scala qt5-default cmake qtcreator
sudo apt-get install -y p7zip p7zip-full xz-utils
sudo apt-get install -y w3m lynx links2 taskwarrior glances
sudo apt-get install -y qbittorrent transmission deluge aria2 uget xdm
sudo apt-get install -y bats cde coop-computing-tools coop-computing-tools-dev coop-computing-tools-doc
sudo apt-get install -y cde #impressive
#sudo apt-get install -y htcondor htcondor-dev
sudo apt-get install -y copyq copyq-plugins freeipmi gcalcli f3 ddrescue
sudo apt-get install -y stacer timeshift clonezilla fdupes unison catfish
#sudo apt-get install -y eclipse
sudo apt-get install -y netbeans
sudo add-apt-repository ppa:gezakovacs/ppa
sudo apt-get update
sudo apt-get install -y unetbootin k3b brasero
#https://objects.githubusercontent.com/github-production-release-asset-2e65be/45055693/d343a562-8fff-4097-954a-9643f8752b85?X-Amz-Algorithm=AWS4-HMAC-SHA256&X-Amz-Credential=AKIAIWNJYAX4CSVEH53A%2F20220305%2Fus-east-1%2Fs3%2Faws4_request&X-Amz-Date=20220305T230404Z&X-Amz-Expires=300&X-Amz-Signature=c9e074d1bdd30bafe178f798351ef6fd593ab33a30b5ecb070f5270f314f7239&X-Amz-SignedHeaders=host&actor_id=18035867&key_id=0&repo_id=45055693&response-content-disposition=attachment%3B%20filename%3Dbalena-etcher-electron-1.7.7-linux-x64.zip
echo "deb https://deb.etcher.io stable etcher" | sudo tee /etc/apt/sources.list.d/balena-etcher.list
sudo apt-key adv --keyserver hkps://keyserver.ubuntu.com:443 --recv-keys 379CE192D401AB61
sudo apt update
sudo apt install balena-etcher-electron
wget https://github.com/qarmin/czkawka/releases/download/4.0.0/linux_czkawka_cli
wget https://github.com/qarmin/czkawka/releases/download/4.0.0/linux_czkawka_gui
mv linux_czkawka_cli czkawka
mv linux_czkawka_gui czkawka_gui
chmod u+x czkawka
chmod u+x czkawka_gui
mv czkawka /bin/czkawka
mv czkawka_gui /bin/czkawka_gui
sudo add-apt-repository ppa:hamishmb/myppa
sudo apt-get update
sudo apt-get install ddrescue-gui -y