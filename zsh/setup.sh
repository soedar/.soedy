#!/bin/bash

files=(zlogin zlogout zpreztorc zprofile zshenv zshrc)

for file in ${files[@]}; do
    ln -s ~/.soedy/zsh/prezto/runcoms/$file ~/.$file 
done
