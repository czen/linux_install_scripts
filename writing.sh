#!/bin/bash

# bibisco
wget https://github.com/olivierkes/manuskript/releases/download/0.13.1/manuskript-0.13.1-1.deb
sudo apt-get install -y ./manuskript-0.13.1-1.deb
wget https://github.com/federico-terzi/espanso/releases/download/v0.7.3/espanso-debian-amd64.deb
sudo apt-get install -y ./espanso-debian-amd64.deb
#curl -fsSL https://download.opensuse.org/repositories/home:AndnoVember:KITScenarist/xUbuntu_20.04/Release.key | gpg --dearmor | sudo tee /etc/apt/trusted.gpg.d/home_AndnoVember_KITScenarist.gpg > /dev/null
#sudo apt update
#sudo apt install kitscenarist
# TODO: fix
wget https://download.opensuse.org/repositories/home:/AndnoVember:/KITScenarist/xUbuntu_20.04/amd64/kitscenarist_0.7.2.rc15.0+git.70ebff68-0_amd64.deb
sudo apt-get install -y ./kitscenarist_0.7.2.rc15.0+git.70ebff68-0_amd64.deb
sudo apt-get install -y scribus asciidoc
# languagetool
curl -L https://raw.githubusercontent.com/languagetool-org/languagetool/master/install.sh | sudo bash -a
sudo mv LanguageTool* /opt/LanguageTool
# TODO: install languagetool extensions
sudo -v && wget -nv -O- https://download.calibre-ebook.com/linux-installer.sh | sudo sh /dev/stdin