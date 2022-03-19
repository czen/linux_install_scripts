#!/bin/bash

sudo add-apt-repository -y universe
sudo apt update
sudo apt-get install -y cura
sudo apt-get install -y slic3r
sudo apt-get install libglu1-mesa libpangoxft-1.0
wget https://cdn.prusa3d.com/downloads/drivers/prusa3d_linux_2_4_0.zip
unzip prusa3d_linux_2_4_0.zip
chmod u+x PrusaSlicer-2.4.0+linux-x64-202112211614.AppImage
./PrusaSlicer-2.4.0+linux-x64-202112211614.AppImage --appimage-extract
cd squashfs-root
sudo mkdir /opt/PrusaSlicer
sudo cp -r ./* /opt/PrusaSlicer
cd ..
rm -rf squashfs-root
# TODO: fix makerware key
sudo apt-add-repository 'deb http://downloads.makerbot.com/makerware/ubuntu focal main'
wget http://downloads.makerbot.com/makerware/ubuntu/dev@makerbot.com.gpg.key
sudo apt-key add dev@makerbot.com.gpg.key
sudo apt-get update
sudo apt-get install makerware
# TODO: fix repetier and mono version
wget https://download3.repetier.com/files/host/linux/repetierHostLinux_2_2_4.tgz
tar -xzf repetierHostLinux_2_2_4.tgz
cd RepetierHost
sh configureFirst.sh
cd ..
cp -R RepetierHost/ /opt/
wget https://mattercontrol.appspot.com/downloads/mattercontrol-linux/release
# wget https://mattercontrol.appspot.com/downloads/mattercontrol-linux/release
#flatpak install -y flathub com.flashforge.FlashPrint
wget https://en.fss.flashforge.com/10000/software/7f8b3d7b5185be8d8d25bacb45995eda.deb
sudo apt-get install -y ./7f8b3d7b5185be8d8d25bacb45995eda.deb
