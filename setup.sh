#!/bin/sh

ln -s ~/.soedy/vim ~/.vim
ln -s ~/.soedy/vim/vimrc ~/.vimrc
ln -s ~/.soedy/tmux.conf ~/.tmux.conf
git submodule update --init
