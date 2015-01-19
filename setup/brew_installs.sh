#!/bin/sh

# Update brew

# Install brew cask
brew install caskroom/cask/brew-cask

# Basic stuff
brew install vim
brew install wget
brew install python3
brew install git
brew install tmux
brew install the_silver_searcher

# Applications
brew cask install firefox
brew cask install vlc
brew cask install google-chrome
brew cask install slack
brew cask install virtualbox
brew cask install dropbox
brew cask install gimp

# Others
source _brew_acad.sh
source _brew_office.sh
source _brew_ror.sh
