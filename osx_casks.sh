#! /usr/bin/env zsh
brew install brew-cask-completion
# Install native apps
brew tap caskroom/cask
# brew install brew-cask
brew tap caskroom/fonts
brew tap caskroom/versions

#brew cask install qfinder-pro
brew cask uninstall --force anaconda pycharm-ce qfinder-pro evernote macvim openoffice filezilla cakebrew google-chrome  owncloud  todotxt tunnelblick  adobe-acrobat-reader clamxav  dropbox thunderbird  unison pineapple arduino flash-player clementine wireshark mendeley unetbootin betterzipql  gitkraken

for i in IINA-beta jupyter-notebook-ql atom docker-toolbox libreoffice chromium virtualbox kitematic github-desktop psychopy java flash-npapi firefox iterm2 caskroom/fonts/font-symbola caskroom/fonts/font-inconsolata seashore skype the-unarchiver vlc spectacle xquartz qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package sourcetree meld etcher inkscape zotero
do
  echo '📸  Installing ' $i
  # brew cask uninstall --force $i
  brew cask install $i
done

# upgrade
brew update; brew cask reinstall `brew cask outdated --quiet`; brew cleanup
