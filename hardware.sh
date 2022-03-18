#!/bin/bash

sudo apt-get install -y cpu-x lshw neofetch hwinfo inxi
pip3 install ps_mem baobab evtest
flatpak install -y flathub com.leinardi.gst
flatpak install -y flathub io.gitlab.evtest_qt.evtest_qt
wget https://github.com/arunsivaramanneo/GPU-Viewer/releases/download/v1.36/gpu-viewer_1.36H1-1_amd64.deb
sudo apt-get install -y ./gpu-viewer_1.36H1-1_amd64.deb
flatpak install -y flathub com.leinardi.gwe