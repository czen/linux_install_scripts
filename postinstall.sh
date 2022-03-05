#!/bin/bash

sudo usermod -aG docker czen
sudo docker run --rm hello-world
sudo snap install hello-world
