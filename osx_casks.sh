#! /usr/bin/env zsh
brew install brew-cask-completion
# Install native apps
brew tap caskroom/cask
# brew install brew-cask
brew tap caskroom/fonts
brew tap caskroom/versions

brew cask uninstall --force pycharm-ce qfinder-pro evernote macvim openoffice filezilla cakebrew google-chrome  todotxt tunnelblick  adobe-reader clamxav  dropbox thunderbird  unison pineapple arduino flash-player clementine wireshark mendeley unetbootin

for i in anaconda jupyter-notebook-ql atom docker-toolbox libreoffice chromium virtualbox kitematic github-desktop owncloud  psychopy java flash-npapi firefox iterm2 caskroom/fonts/font-symbola caskroom/fonts/font-inconsolata seashore skype the-unarchiver vlc spectacle xquartz qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv betterzipql webpquicklook suspicious-package sourcetree meld etcher inkscape zotero
do
  echo '📸  Installing ' $i
  # brew cask uninstall --force $i
  brew cask install $i
done

# upgrade
brew update; brew cask reinstall `brew cask outdated --quiet`; brew cask cleanup
