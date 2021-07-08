#!/bin/bash
wget -O "SALOME-9.7.0-native-UB20.04-SRC.tar.gz" "https://www.salome-platform.org/downloads/current-version/DownloadDistr?platform=SP.UB20.04native&version=9.7.0"
tar -xvf SALOME-9.7.0-native-UB20.04-SRC.tar.gz
cd SALOME-9.7.0-native-UB20.04-SRC
./runInstall
