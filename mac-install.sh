#!/bin/bash
# Script author: Jon Crain
# Version 1.2 || 2016-9-9

# Check if Homebrew is Installed and if not, Install Homebrew
which -s brew
if [[ $? != 0 ]] ; then
    # Install Homebrew
    # https://github.com/mxcl/homebrew/wiki/installation
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
    brew update
fi

# This need some work...
# Install Python, PIP, vim and all that jazz
#    brew install python
#    brew tap hombre/dupes
#    easy_install pip
#    pip install --user git+git://github.com/Lokaltog/powerline
#    brew install vim --with-python --with-ruby --with-perl
#    brew install macvim --env-std --override-system-vim
#    pip install --user git+git://github.com/Lokaltog/powerline


# Install Cask
brew tap caskroom/cask
brew install caskroom/cask/brew-cask

# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/usr/local/bin/Caskroom"

brew cask install 1password
brew cask install appcleaner
brew cask install atom
brew cask install autodmg
brew cask install caffeine
brew cask install createuserpkg
brew cask install cyberduck
brew cask install dropbox
brew cask install filezilla
brew cask install firefox
# brew cask install fitbit-connect
brew cask install flux
brew cask install franz
brew cask install gas-mask
brew cask install grandperspective
brew cask install go2shell
brew cask install google-chrome
brew cask install google-photos-backup
brew cask install iterm2
brew cask install kaleidoscope
brew cask install karabiner
brew cask install navicat-premium
brew cask install nvalt
brew cask install postman
brew cask install quitter
brew cask install rescuetime
brew cask install skype
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install steam
brew cask install textexpander
brew cask install textwrangler
brew cask install vagrant
brew cask install virtualbox
brew cask install vlc

brew cask cleanup
