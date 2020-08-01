#!/bin/bash
sudo cp code-server.service /lib/systemd/system/code-server.service
mkdir ~/code-server
cd ~/code-server
wget https://github.com/cdr/code-server/releases/download/3.2.0/code-server-3.2.0-linux-x86_64.tar.gz
tar -xzvf code-server-3.2.0-linux-x86_64.tar.gz
sudo cp -r code-server-3.2.0-linux-x86_64 /usr/lib/code-server
sudo ln -s /usr/lib/code-server/code-server /usr/bin/code-server
sudo mkdir /var/lib/code-server
#sudo nano /lib/systemd/system/code-server.service
sudo systemctl enable code-server
sudo systemctl start code-server
