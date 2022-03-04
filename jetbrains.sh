#!/bin/bash

sudo apt-get install -y jq
# might as well install everything when needed through toolbox manually
#wget https://download-cdn.jetbrains.com/toolbox/jetbrains-toolbox-1.22.10970.tar.gz
#tar -xvzf jetbrains-toolbox-1.22.10970.tar.gz
#rm jetbrains-toolbox-1.22.10970.tar.gz
tb_releases_url='https://data.services.jetbrains.com/products/releases?code=TBA&latest=true&type=release'
download_url=$(curl --silent $tb_releases_url | jq --raw-output '.TBA[0].downloads.linux.link')
curl --output jetbrains-toolbox.tgz --progress-bar --location $download_url
tar -xvzf jetbrains-toolbox.tgz
mv jetbrains-toolbox-* jetbrains-toolbox-folder
cd jetbrains-toolbox-folder
./jetbrains-toolbox --appimage-extract
cd ..

pcc_releases_url='https://data.services.jetbrains.com/products/releases?code=PCC&latest=true&type=release'
pcc_download_url=$(curl --silent $pcc_releases_url | jq --raw-output '.PCC[0].downloads.linux.link')
curl --output pycharm-community.tgz --progress-bar --location $pcc_download_url
sudo tar xzf pycharm-community.tgz -C /opt/

pc_releases_url='https://data.services.jetbrains.com/products/releases?code=PC&latest=true&type=release'
pc_download_url=$(curl --silent $pc_releases_url | jq --raw-output '.PCP[0].downloads.linux.link')
curl --output pycharm-professional.tgz --progress-bar --location $pc_download_url
sudo tar xzf pycharm-professional.tgz -C /opt/

ws_releases_url='https://data.services.jetbrains.com/products/releases?code=WS&latest=true&type=release'
ws_download_url=$(curl --silent $ws_releases_url | jq --raw-output '.WS[0].downloads.linux.link')
curl --output webstorm.tgz --progress-bar --location $ws_download_url
sudo tar xzf webstorm.tgz -C /opt/

ps_releases_url='https://data.services.jetbrains.com/products/releases?code=PS&latest=true&type=release'
ps_download_url=$(curl --silent $ps_releases_url | jq --raw-output '.PS[0].downloads.linux.link')
curl --output phpstorm.tgz --progress-bar --location $ps_download_url
sudo tar xzf phpstorm.tgz -C /opt/

rd_releases_url='https://data.services.jetbrains.com/products/releases?code=RD&latest=true&type=release'
rd_download_url=$(curl --silent $rd_releases_url | jq --raw-output '.RD[0].downloads.linux.link')
curl --output rider.tgz --progress-bar --location $rd_download_url
sudo tar xzf rider.tgz -C /opt/

mps_releases_url='https://data.services.jetbrains.com/products/releases?code=MPS&latest=true&type=release'
mps_download_url=$(curl --silent $mps_releases_url | jq --raw-output '.MPS[0].downloads.linux.link')
curl --output mps.tgz --progress-bar --location $mps_download_url
sudo tar xzf mps.tgz -C /opt/

dg_releases_url='https://data.services.jetbrains.com/products/releases?code=DG&latest=true&type=release'
dg_download_url=$(curl --silent $dg_releases_url | jq --raw-output '.DG[0].downloads.linux.link')
curl --output datagrip.tgz --progress-bar --location $dg_download_url
sudo tar xzf datagrip.tgz -C /opt/

iic_releases_url='https://data.services.jetbrains.com/products/releases?code=IIC&latest=true&type=release'
iic_download_url=$(curl --silent $iic_releases_url | jq --raw-output '.IIC[0].downloads.linux.link')
curl --output intellij-community.tgz --progress-bar --location $iic_download_url
sudo tar xzf intellij-community.tgz -C /opt/

gw_releases_url='https://data.services.jetbrains.com/products/releases?code=GW&latest=true&type=release'
gw_download_url=$(curl --silent $gw_releases_url | jq --raw-output '.GW[0].downloads.linux.link')
curl --output gateway.tgz --progress-bar --location $gw_download_url
sudo tar xzf gateway.tgz -C /opt/