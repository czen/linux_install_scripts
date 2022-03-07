#!/bin/bash
sudo apt-get install -y freecad librecad solvespace openscad openfoam
wget https://qcad.org/archives/qcad/qcad-3.26.4-trial-linux-x86_64.run
chmod a+x qcad-3.26.4-trial-linux-x86_64.run
./qcad-3.26.4-trial-linux-x86_64.run
wget "sourceforge.net/projects/brlcad/files/BRL-CAD for Linux/7.28.0/brlcad_7.28.0-0_amd64.deb"
sudo apt-get install -y gdebi
sudo gdebi brlcad*.deb
#wget https://www.salome-platform.org/downloads/current-version/DownloadDistr?platform=SP.UB20.04native&version=9.7.0
# https://www.caelinux.com/CMS3/index.php/download/62-caelinux-2020
# https://sourceforge.net/projects/caelinux/files/CAELinux2020/



