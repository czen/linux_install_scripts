#!/bin/bash

sudo apt-get install -y karbon Pencil2d
wget https://github.com/pencil2d/pencil/releases/download/v0.6.6/pencil2d-linux-amd64-0.6.6.AppImage
chmod u+x pencil2d-linux-amd64-0.6.6.AppImage
mkdir /opt/pencil2d/
./pencil2d-linux-amd64-0.6.6.AppImage --appimage-extract
cp -R squashfs-root/* /opt/pencil2d/
# https://synfig.itch.io/synfig-studio
# opentoonz https://snapcraft.io/opentoonz