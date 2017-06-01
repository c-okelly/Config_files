#!/bin/sh

echo Install Xcode
xcode-select --install
echo Xcode location
xcode-select -p
echo gcc Version
gcc --version

echo Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

echo Install Homebrew Cask
brew tap caskroom/cask
brew install brew-cask

echo Install work Apps

# Languages
echo Installing Java, Python, Python3
brew cask install --appdir="/Applications" java
brew install python
brew install python3

# Command line extensions / apps
echo Install wget z git mysql postgresql tree gradle maven
brew install wget
brew install z
brew install git
brew install mysql
brew install postgresql
brew install tree
brew install gradle
brew install maven
echo Installing tmux
brew install tmux
echo Installing iTerm2
brew cask install --appdir="/Applications" iterm2

# General apps
echo Installing VirtualBox
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
echo Installing DishInventoryX
brew cask install --appdir="/Applications" disk-inventory-x
echo Installing Slack
brew cask install --appdir="/Applications" slack
echo Installing Alfred
brew cask install --appdir="/Applications" alfred
echo Installing Keepingyouawake
brew cask install --appdir="/Applications" keepingyouawake
echo Installing f-lux
brew cask install --appdir="/Applications" flux
echo Installing Libre Office
brew cask install --appdir="/Applications" libreoffice
echo Installing franz
brew cask install --appdir="/Applications" franz
echo Installing Wireshark
brew cask install --appdir="/Applications" wireshark
echo Installing CheatSheet
brew cask install --appdir="/Applications" cheatsheet
echo Installing Anaconda
brew cask install --appdir="/Applications" anaconda
echo Installing Kindle
brew cask install --appdir="/Applications" kindle

# IDE / Development
echo Installing Intellij
brew cask install --appdir="/Applications" intellij-idea-ce
echo Installing Atom
brew cask install --appdir="/Applications" atom
echo Installing PyCharm
brew cask install --appdir="/Applications" pycharm-ce
echo Installing Visual Studio Code
brew cask install --appdir="/Applications" visual-studio-code
echo Installing Postman
brew cask install --appdir="/Applications" postman
echo Installing screehero
brew cask install screenhero


# Dev
echo Installing node bower
brew install node
brew install bower

# Dev - Javascript
echo Installing grunt gulp eslint polymer-cli
npm install -g grunt-cli
sudo npm install gulp-cli -g
npm install -g eslint
npm install -g polymer-cli

# echo Installing Quicklook packages
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo

echo Installing personal apps

# echo Installing Spotify
# brew cask install --appdir="/Applications" spotify

# Other app

# echo Installing Postgres
# brew cask install --appdir="/Applications" postgres
# echo Installing Sequel Pro
# brew cask install --appdir="/Applications" sequel-pro
# echo Installing App Cleaner
# brew cask install --appdir="/Applications" appcleaner
# echo Installing Dashlane
# brew cask install --appdir="/Applications" dashlane
# echo Installing PDFExpert
# brew cask install --appdir="/Applications" pdfexpert
# echo Installing fantastical
# brew cask install --appdir="/Applications" fantastical
