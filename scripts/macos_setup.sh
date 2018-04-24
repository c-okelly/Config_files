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
# brew install brew-cask
# brew tap homebrew/versions
# Cask upgrader
brew tap buo/cask-upgrade

echo Install work Apps

# Install backup and sync and mackup
echo Installing Mackup and backup and sync
brew install mackup
brew cask install google-backup-and-sync


# Languages
echo Installing Java, Python, Python3, R
brew cask install java
brew cask install java8
brew install python
brew install python3
pip3 install --upgrade pip setuptools wheel
brew install r

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
brew install sl
brew install tmux
sudo gem install tmuxinator
brew cask install iterm2
brew cask install hammerspoon
brew cask install karabiner-elements
brew install safe-rm
brew install task
#brew cask install sqlitebrowser
brew install nethogs
brew install f3
brew install tldr
brew install jq

# oh my zsh install
sh -c "$(wget https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh -O -)"

# Developement epps
install cmake openssl jansson libpng sdl2 speexdsp libzip

# General apps
echo install Anki
brew cask install anki
echo Installing VirtualBox
brew cask install virtualbox
echo Installing The Unarchiver
brew cask install the-unarchiver
echo Installing VLC
brew cask install vlc
echo Installing Spectacle
brew cask install spectacle
echo Installing Skype
brew cask install skype
echo Installing Skype for business
brew cask install skype-for-business
echo Installing Google Chrome
brew cask install google-chrome
echo Installing DishInventoryX
brew cask install disk-inventory-x
echo Installing Slack
brew cask install slack
echo Installing Alfred
brew cask install alfred
echo Installing Keepingyouawake
brew cask install keepingyouawake
echo Installing f-lux
brew cask install flux
echo Installing Libre Office
brew cask install libreoffice
echo Installing Wireshark
brew cask install wireshark
echo Installing CheatSheet
brew cask install cheatsheet
echo Installing Anaconda
brew cask install anaconda
echo Installing Kindle
brew cask install kindle
echo Installing Spotify
brew cask install spotify
echo Installing openvpn
brew install openvpn
echo Installing tunnelblick
brew cask install tunnelblick
echo Installing xquartx for wine
brew cask install xquartz
echo Installing wine
brew install wine
brew install winetricks
echo Installing Apptivate
brew cask install apptivate
brew cask install mendeley-desktop
brew cask install whatsapp
brew cask install spotify
brew cask install texmaker
brew cask install evernote
brew cask install flux


# IDE / Development
echo Installing Intellij
brew cask install intellij-idea
echo Installing PyCharm
brew cask install pycharm-ce
echo Installing Visual Studio Code
brew cask install visual-studio-code-insiders
# brew cask install visual-studio-code
echo Installing Postman
brew cask install postman
echo Installing emacs
brew install emacs --with-cocoa
echo Installing docker
brew cask install docker-edge
echo Installing sourcetree
brew install sourcetree
echo Installing microsoft remote desktop
brew cask install caskroom/versions/microsoft-remote-desktop-beta
brew cask install microsoft-teams
brew cask install dbeaver-community
brew cask install real-vnc
brew cask install jprofiler

# Dev - Javascript
echo Installing node bower
brew install node
brew install bower

echo Installing grunt gulp eslint polymer-cli
sudo npm install -g gulp-cli
npm install -g eslint
npm install -g polymer-cli
npm install -g plolyserve
npm install -g bower
npm install jsonlint -g
npm install spoof -g

brew cask install qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql qlimagesize webpquicklook suspicious-package quicklookase qlvideo

echo Installing personal apps
echo Installing Discord
brew cask install discord
echo Installing Calibre
brew cask install calibre
echo Installing Steam
brew cask install steam
echo Installing Cyberduck
brew cask install cyberduck
echo Installing Latex - MacTex
brew cask install mactex
#echo Installing play-on-mac
#brew cask install playonmac

# App settings
echo Set wine up
winetricks settings fontsmooth=rgb
winecfg

# Other apps
# brew cask install dashlane
# brew cask install fantastical
