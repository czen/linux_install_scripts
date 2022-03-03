#!/bin/bash

sudo apt-get update
sudo apt-get install -y software-properties-common
sudo apt-get install -y octave
sudo apt install -y dirmngr gnupg apt-transport-https ca-certificates software-properties-common
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu focal-cran40/'
sudo apt install -y r-base
#wget https://julialang-s3.julialang.org/bin/linux/x64/1.6/julia-1.6.5-linux-x86_64.tar.gz
#tar -xvzf julia-1.6.5-linux-x86_64.tar.gz
#sudo cp -R julia-1.6.5 /opt/julia-1.6.5
sudo apt-get install -y julia
#wget https://www.scilab.org/download/6.1.1/scilab-6.1.1.bin.linux-x86_64.tar.gz
sudo apt-get install -y scilab
sudo apt-get install -y maxima wxmaxima