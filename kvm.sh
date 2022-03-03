#!/bin/bash
sudo apt-get install qemu-kvm virtinst bridge-utils cpu-checker
#kvm-ok
sudo cp /etc/network/interfaces /etc/network/interfaces.bakup-1
# sudo vi /etc/network/interfaces
#sudo systemctl restart networking
#sudo brctl show
sudo apt-get install -y virt-manager
