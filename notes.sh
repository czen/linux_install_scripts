#!/bin/bash

wget https://github.com/zadam/trilium/releases/download/v0.48.8/trilium_0.48.8_amd64.deb
sudo apt-get install -y ./trilium_0.48.8_amd64.deb
flatpak install -y --noninteractive flathub md.obsidian.Obsidian
flatpak run md.obsidian.Obsidian
wget https://download.zotero.org/client/release/5.0.96.3/Zotero-5.0.96.3_linux-x86_64.tar.bz2
tar -xf Zotero-5.0.96.3_linux-x86_64.tar.bz2
cp -R Zotero_linux-x86_64 /opt/Zotero
# TODO: install zotero connector
wget https://github.com/Jermolene/TiddlyDesktop/releases/download/v0.0.13/tiddlydesktop-linux64-v0.0.13.zip -P ~/Downloads
cd ~/Downloads
unzip tiddlydesktop-linux64-v0.0.13.zip
mv TiddlyDesktop-linux*-v0.0.13 ~/TiddlyDesktop
cd ~/TiddlyDesktop
sudo chmod +x nw
cd ~
wget https://github.com/laurent22/joplin/releases/download/v2.7.14/Joplin-2.7.14.AppImage
chmod u+x Joplin-2.7.14.AppImage
./Joplin-2.7.14.AppImage --appimage-extract
cp -R squashfs-root /opt/Joplin
wget https://zim-wiki.org/downloads/zim_0.74.3_all.deb
sudo apt-get install -y ./zim_0.74.3_all.deb
wget https://static.zenkit.com/downloads/desktop-apps/base/zenkit-base-linux.deb
sudo apt-get install -y ./zenkit-base-linux.deb
flatpak install -y --noninteractive flathub org.standardnotes.standardnotes
wget https://github.com/Zettlr/Zettlr/releases/download/v2.2.4/Zettlr-2.2.4-amd64.deb
sudo apt-get install -y ./Zettlr-2.2.4-amd64.deb
wget -o dynalist.tar.gz https://dynalist.io/standalone/download?file=dynalist.tar.gz
tar -xvzf dynalist.tar.gz
cp -R dynalist-* /opt/dynalist
wget https://github.com/ankitects/anki/releases/download/2.1.49/anki-2.1.49-linux.tar.bz2
tar -xf anki-2.1.49-linux.tar.bz2
cd anki-2.1.49-linux
./install.sh
cd ~
flatpak install -y flathub com.logseq.Logseq
