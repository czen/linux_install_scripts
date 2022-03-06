#!/bin/bash

sudo add-apt-repository universe
sudo apt update
sudo apt-get install -y cura
sudo apt-get install -y slic3r
sudo apt-get install libglu1-mesa libpangoxft-1.0
wget https://cdn.prusa3d.com/downloads/drivers/prusa3d_linux_2_4_0.zip
unzip prusa3d_linux_2_4_0.zip
chmod u+x PrusaSlicer-2.4.0+linux-x64-202112211614.AppImage
./PrusaSlicer-2.4.0+linux-x64-202112211614.AppImage --appimage-extract
cd squashfs-root
mkdir /opt/PrusaSlicer
cp ./* /opt/PrusaSlicer
cd ..
rm -rf squashfs-root
sudo apt-add-repository 'deb http://downloads.makerbot.com/makerware/ubuntu focal main'
wget http://downloads.makerbot.com/makerware/ubuntu/dev@makerbot.com.gpg.key
sudo apt-key add dev@makerbot.com.gpg.key
sudo apt-get update
sudo apt-get install makerware
wget https://download3.repetier.com/files/host/linux/repetierHostLinux_2_2_4.tgz
tar -xzf repetierHostLinux_2_2_4.tgz
cd RepetierHost
sh configureFirst.sh
cd ..
cp -R RepetierHost/ /opt/
