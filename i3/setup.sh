#!/bin/bash

mkdir -p ~/.config
ln -s ~/.soedy/i3/i3 ~/.config
ln -s ~/.soedy/i3/i3status ~/.config
ln -s ~/.soedy/i3/dunst ~/.config
ln -s ~/.soedy/i3/i3blocks ~/.config

sudo ln -s ~/.soedy/i3/xcwd /usr/bin

