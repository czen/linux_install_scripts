#!/bin/bash

wget https://downloads.arduino.cc/arduino-1.8.19-linux64.tar.xz
tar -xf arduino-1.8.19-linux64.tar.xz
sudo cp -R  arduino-1.8.19 /opt/arduino
/opt/arduino/install.sh
rm -rf arduino-1.8.19-linux64.tar.xz
rm -rf arduino-1.8.19
sudo apt-get install -y sdcc
#wget https://www.st.com/content/ccc/resource/technical/software/sw_development_suite/group0/49/6d/3d/62/eb/0d/42/4b/stm32cubeide_deb/files/st-stm32cubeide_1.8.0_11526_20211125_0815_amd64.deb_bundle.sh.zip/jcr:content/translations/en.st-stm32cubeide_1.8.0_11526_20211125_0815_amd64.deb_bundle.sh.zip
