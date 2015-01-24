#!/bin/bash

# Vim
source vim/setup.sh

# zsh
source zsh/setup.sh

# tmux
source tmux/setup.sh
ln -s ~/.soedy/tmux.conf ~/.tmux.conf

# clone submodule
git submodule update --init
