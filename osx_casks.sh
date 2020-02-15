#! /usr/bin/env zsh
brew install brew-cask-completion
# Install native apps
brew tap caskroom/cask
# brew install brew-cask
brew tap caskroom/fonts
brew untap caskroom/versions
brew untap homebrew/homebrew-x11
brew untap homebrew/homebrew-completions
brew untap homebrew/homebrew-boneyard
brew untap homebrew/homebrew-fuse

#brew cask install qfinder-pro
brew cask uninstall --force pycharm-ce qfinder-pro evernote macvim openoffice  cakebrew google-chrome owncloud  todotxt tunnelblick  adobe-acrobat-reader clamxav  dropbox thunderbird  unison pineapple arduino flash-player clementine wireshark mendeley-desktop unetbootin gitkraken virtualbox kitematic sourcetree docker-toolbox garmin-basecamp

for i in signal IINA-beta jupyter-notebook-ql atom libreoffice chromium github-desktop psychopy java flash-npapi firefox iterm2 caskroom/fonts/font-symbola caskroom/fonts/font-inconsolata seashore skype the-unarchiver vlc spectacle xquartz qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package meld balenaetcher inkscape zotero signal near-lock near-lock
do
  echo '📸  Installing ' $i
  # brew cask uninstall --force $i
  brew cask install $i
done

# upgrade
brew update; brew cask reinstall `brew cask outdated --quiet`; brew cleanup
