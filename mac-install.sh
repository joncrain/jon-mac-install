#!/bin/bash
# Script author: Jon Crain
# Version 1.0 || 2014-6-6

# Check if Homebrew is Installed and if not, Install Homebrew
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    # https://github.com/mxcl/homebrew/wiki/installation
    ruby -e "$(curl -fsSL https://raw.github.com/Homebrew/homebrew/go/install)"
else
    brew update
fi

# Check if Git is installed
which -s git || brew install git
brew install tmux
brew install vim --with-python

# Install Cask
brew tap caskroom/cask
brew install caskroom/cask/brew-cask

brew cask install alfred
brew cask install appcleaner
brew cask install audacity
brew cask install bittorrent-sync
brew cask install box-sync
brew cask install caffeine
brew cask install cord
brew cask install crashplan
brew cask install dropbox
brew cask install filezilla
brew cask install flip4mac
brew cask install flux
brew cask install gas-mask
brew cask install google-chrome
brew cask install handbrake
brew cask install iterm2
brew cask install nvalt
brew cask install onepassword
brew cask install remote-desktop-connection
brew cask install silverlight
brew cask install skydrive
brew cask install skype
brew cask install spectacle
brew cask install spotify
brew cask install sublime-text
brew cask install textexpander
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

brew cask cleanup
