#!/bin/bash
# Script author: Jon Crain
# Version 1.3 || 2017-12-15
# This script is not meant to be called as part of the deployment/imaging
# It's simply for when I get a new computer or loaner or something...

# Check if Homebrew is Installed and if not, Install Homebrew
which -s brew
if [[ $? != 0 ]] ; then
  echo "Installing Xcode ..."
  xcode-select --install
  echo "Installing Homebrew ..."
  # https://github.com/mxcl/homebrew/wiki/installation
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
else
  echo "Updating Homebrew ..."
  brew update
fi

mkdir ~/.vim ; cd ~/.vim ; mkdir backups ; mkdir colors ; mkdir swaps; mkdir undo;
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseButtonMode TwoButton
defaults write com.apple.driver.AppleBluetoothMultitouch.mouse MouseOneFingerDoubleTapGesture 1
defaults write -g com.apple.mouse.scaling 3.0
defaults write -g com.apple.trackpad.scaling 3.0
defaults write com.apple.driver.applebluetoothmultitouch.trackpad.plist Clicking 1
defaults write com.apple.driver.applebluetoothmultitouch.trackpad.plist Clicking 1

# This need some work...
# Install Python, PIP, vim and all that jazz
#    brew install python
#    brew tap hombre/dupes
#    easy_install pip
#    pip install --user git+git://github.com/Lokaltog/powerline
#    brew install vim --with-python --with-ruby --with-perl
#    pip install --user git+git://github.com/Lokaltog/powerline
easy_install pip
pip install requests

# Install Cask
brew tap caskroom/cask
brew install caskroom/cask/brew-cask

# Specify your defaults in this environment variable
export HOMEBREW_CASK_OPTS="--appdir=/Applications --caskroom=/usr/local/bin/Caskroom"

brew cask install 1password
brew cask install appcleaner
brew cask install atom
brew cask install autodmg
brew cask install autopkgr
brew cask install bbedit
brew cask install caffeine
brew cask install docker
brew cask install dropbox
brew cask install filezilla
brew cask install firefox
brew cask install flux
brew cask install franz
brew cask install gas-mask
brew cask install grandperspective
brew cask install go2shell
brew cask install google-chrome
brew cask install google-photos-backup
brew cask install iterm2
brew cask install java
brew cask install kaleidoscope
brew cask install karabiner
brew cask install kitematic
brew cask install macvim
brew cask install navicat-premium
brew cask install nomad
brew cask install onedrive
brew cask install opera
brew cask install nvalt
brew cask install postman
brew cask install royal-tsx
brew cask install sdformatter
brew cask install skype
brew cask install slack
brew cask install spectacle
brew cask install spotify
brew cask install steam
brew cask install suspicious-package
brew cask install textexpander
brew cask install vagrant
brew cask install veertu
brew cask install virtualbox
brew cask install vlc
brew cask install vmware-horizon-client
brew cask install vmware-remote-console
brew cask install vnc-viewer

echo "Cleaning up ..."
brew cleanup
brew cask cleanup

mkdir ~/Projects
cd ~/Projects
# inception
git clone https://github.com/joncrain/jon-mac-install.git
git clone https://code.cmich.edu/mac/deploystudio.git
git clone https://code.cmich.edu/mac/profiles.git
git clone https://code.cmich.edu/mac/packages.git
git clone https://code.cmich.edu/mac/munki-repo.git
git clone https://code.cmich.edu/mac/autopkgr.git

