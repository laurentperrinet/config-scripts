#! /usr/bin/env zsh
brew install brew-cask-completion
# Install native apps
brew untap Homebrew/homebrew-cask-eid
brew tap homebrew/cask-fonts

#brew cask install qfinder-pro
brew cask uninstall --force pycharm-ce qfinder-pro evernote macvim openoffice  cakebrew google-chrome owncloud  todotxt tunnelblick  adobe-acrobat-reader clamxav  dropbox thunderbird  unison pineapple arduino flash-player clementine wireshark unetbootin gitkraken virtualbox kitematic sourcetree docker-toolbox garmin-basecamp abook deepl near-lock java

for i in mattermost signal iina jupyter-notebook-ql atom libreoffice libreoffice-language-pack chromium github-desktop psychopy flash-npapi firefox iterm2 caskroom/fonts/font-symbola caskroom/fonts/font-inconsolata seashore skype the-unarchiver vlc spectacle xquartz qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package meld balenaetcher inkscape zotero signal mendeley
do
  echo '📸  Installing ' $i
  # brew cask uninstall --force $i
  brew cask install $i
done

# upgrade
brew update; brew cask reinstall `brew cask outdated --quiet`; brew cleanup
