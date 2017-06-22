#!/bin/sh

# Check user setup options
read -p "Do you wish to personal applications (not currently setup)?" yn

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
echo Install wget z git mysql postgresql tree gradle maven zsh ispell
brew install wget
brew install z
brew install git
brew install mysql
brew install postgresql
brew install tree
brew install gradle
brew install maven
brew install zsh
brew install ispell
echo Installing tmux
brew install tmux
echo Installing iTerm2
brew cask install --appdir="/Applications" iterm2
echo install hammerspoon
brew cask install --appdir="/Applications" hammerspoon
echo install karabiner elements
brew cask install --appdir="/Applications" karabiner-elements

# General apps
echo install Anki
brew cask install --appdir="/Applications" anki
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
echo Installing Skype for business
brew cask install --appdir="/Applications" skype-for-business
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
echo Installing Spotify
brew cask install --appdir="/Applications" spotify
echo Installing openvpn
brew install --appdir="/Applications" openvpn
echo Installing xquartx for wine
brew cask install xquartz
echo Installing wine
brew install --appdir="/Applications" wine
brew install winetricks
echo Installing Apptivate
brew cask install apptivate
echo Installing Mackup
brew install mackup


# IDE / Development
echo Installing Intellij
brew cask install --appdir="/Applications" intellij-idea
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
echo Installing emacs
brew install --appdir="/Applications" emacs --with-cocoa
echo Installing docker
brew install --appdir="/Applications" docker
echo Installing sourcetree
brew install --appdir="/Applications" sourcetree
echo Installing microsoft remote desktop
brew cask install caskroom/versions/microsoft-remote-desktop-beta

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
npm install jsonlint -g

# echo Installing Quicklook packages
brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo

echo Installing personal apps

echo Installing Discord
brew cask install --appdir="/Applications" discord
echo Installing Calibre
brew cask install --appdir="/Applications" calibre
echo Installing Steam
brew cask install --appdir="/Applications" steam
echo Installing Cyberduck
brew cask install --appdir="/Applications" cyberduck
echo Installing Latex - MacTex
brew cask install --appdir="/Applications" mactex
# echo Installing rtorrent

# App settings
echo Set wine up
winetricks settings fontsmooth=rgb
winecfg

# Other apps

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
