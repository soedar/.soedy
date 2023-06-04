#!/usr/bin/env bash

ln -s .soedy/zsh/p10k.zsh ~/.p10k.zsh
ln -s .soedy/zsh/zshrc ~/.zshrc

# Needed for zsh-completion
rm -f ~/.zcompdump; compinit

# Install fzf
./plugins/fzf/install --completion --key-bindings --no-update-rc
