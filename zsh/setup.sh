#!/bin/bash

ln -s .soedy/zsh/p10k.zsh ~/.p10k.zsh
ln -s .soedy/zsh/zshrc ~/.zshrc

# Needed for zsh-completion
rm -f ~/.zcompdump; compinit
