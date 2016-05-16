#!/bin/bash

mkdir -p ~/.config
ln -s ~/.soedy/i3/i3 ~/.config
ln -s ~/.soedy/i3/i3status ~/.config
ln -s ~/.soedy/i3/dunst ~/.config
ln -s ~/.soedy/i3/i3blocks ~/.config

sudo ln -s ~/.soedy/i3/xcwd /usr/local/bin
sudo ln -s ~/.soedy/i3/lock /usr/local/bin
sudo ln -s ~/.soedy/i3/disable-standby-fs /usr/local/bin
