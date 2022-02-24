#!/bin/bash
mkdir -p /home/$USER/.ssh
ssh-keygen -b 2048 -t rsa -f /home/$USER/.ssh/id_rsa -q -N ""