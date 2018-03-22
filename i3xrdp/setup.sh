#!/bin/bash

mkdir -p ~/.config
ln -s ~/.soedy/i3xrdp/i3 ~/.config
ln -s ~/.soedy/i3xrdp/i3status ~/.config
ln -s ~/.soedy/i3xrdp/dunst ~/.config
ln -s ~/.soedy/i3xrdp/i3blocks ~/.config

sudo ln -s ~/.soedy/i3xrdp/xcwd /usr/local/bin
