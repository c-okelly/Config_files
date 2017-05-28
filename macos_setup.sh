#!/bin/sh

echo Install Xcode
xcode-select --install
echo Xcode location
xcode-select -p
echo gcc Version
gcc --version

echo Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo Install wget z git mysql postgresql tree python2 python3 tmux
brew install wget
brew install z
brew install git
brew install mysql
brew install postgresql
brew install tree
brew install python
brew install python3
brew install tmux

echo Install Homebrew Cask
brew tap caskroom/cask
brew install brew-cask

echo Install work Apps
echo Installing iTerm2
brew cask install --appdir="/Applications" iterm2
echo Installing VirtualBox

echo Installing non-work apps


echo Installing personal apps
brew cask install --appdir="/Applications" virtualbox
echo Installing The Unarchiver
brew cask install --appdir="/Applications" the-unarchiver
echo Installing VLC
brew cask install --appdir="/Applications" vlc
echo Installing Spectacle
brew cask install --appdir="/Applications" spectacle
echo Installing Skype
brew cask install --appdir="/Applications" skype
echo Installing Google Chrome
brew cask install --appdir="/Applications" google-chrome
# echo Installing DishInventoryX
# brew cask install --appdir="/Applications" disk-inventory-x
echo Installing Slack
brew cask install --appdir="/Applications" slack
# echo Installing Evernote
# brew cask install --appdir="/Applications" evernote
# echo Installing Spotify
# brew cask install --appdir="/Applications" spotify
# echo Installing Alfred
# brew cask install --appdir="/Applications" alfred
echo Installing Java
brew cask install --appdir="/Applications" java
echo Installing Intellij
brew cask install --appdir="/Applications" intellij-idea-ce
echo Installing Atom
brew cask install --appdir="/Applications" atom
echo Installing Caffeine
brew cask install --appdir="/Applications" caffeine
echo Installing f-lux
brew cask install --appdir="/Applications" flux
# echo Installing Sequel Pro
# brew cask install --appdir="/Applications" sequel-pro
# echo Installing Valentina Studio
# brew cask install --appdir="/Applications" valentina-studio
echo Installing PyCharm
brew cask install --appdir="/Applications" pycharm-ce
echo Installing Kindle
brew cask install --appdir="/Applications" kindle
echo Installing Postgres
brew cask install --appdir="/Applications" postgres
echo Installing App Cleaner
brew cask install --appdir="/Applications" appcleaner
echo Installing Libre Office
brew cask install --appdir="/Applications" libreoffice
# echo Installing PDFExpert
# brew cask install --appdir="/Applications" pdfexpert
# echo Installing franz
# brew cask install --appdir="/Applications" franz
# echo Installing fantastical
# brew cask install --appdir="/Applications" fantastical
echo Installing Wireshark
brew cask install --appdir="/Applications" wireshark
echo Installing CheatSheet
brew cask install --appdir="/Applications" cheatsheet
# echo Installing Avast
# brew cask install --appdir="/Applications" avast-mac-security
# echo Installing Dashlane
# brew cask install --appdir="/Applications" dashlane
# echo Installing Snip
# brew cask install --appdir="/Applications" snip
echo Installing Anaconda
brew cask install --appdir="/Applications" anaconda
# echo Installing Quicklook packages
# brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo
