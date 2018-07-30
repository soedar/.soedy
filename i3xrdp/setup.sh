#!/bin/bash

mkdir -p ~/.config
mkdir -p ~/.bin

ln -s ~/.soedy/i3xrdp/i3 ~/.config
ln -s ~/.soedy/i3xrdp/i3status ~/.config
ln -s ~/.soedy/i3xrdp/dunst ~/.config
ln -s ~/.soedy/i3xrdp/i3blocks ~/.config

ln -s ~/.soedy/i3xrdp/xcwd ~/.bin
