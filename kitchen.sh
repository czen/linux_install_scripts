#!/bin/bash

wget https://gitlab.gnome.org/GNOME/recipes/raw/master/flatpak/gnome-recipes.flatpakref
flatpak install -y gnome-recipes.flatpakref
wget https://altushost-swe.dl.sourceforge.net/project/nut/bigNUT.zip
uznip bigNUT.zip
mv bigNUT /opt/bigNUT
