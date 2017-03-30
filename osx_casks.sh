#! /usr/bin/env zsh
brew install brew-cask-completion
# Install native apps
brew tap caskroom/cask
# brew install brew-cask
brew tap caskroom/fonts
brew tap caskroom/versions

brew cask uninstall --force evernote macvim openoffice inkscape filezilla cakebrew  todotxt tunnelblick  tomahawk  adobe-reader clamxav  dropbox thunderbird  unison pineapple arduino zotero

export APPS=( jupyter-notebook-ql atom docker-toolbox libreoffice virtualbox kitematic github-desktop owncloud  psychopy wireshark java flash-player firefox iterm2 caskroom/fonts/font-symbola caskroom/fonts/font-inconsolata seashore skype the-unarchiver vlc spectacle xquartz qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package sourcetree meld clementine)
for i in $APPS
do
  echo '📸  Installing ' $i
  # brew cask uninstall --force $i
  brew cask install $i
done
