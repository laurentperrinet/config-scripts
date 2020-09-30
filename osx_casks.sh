#! /usr/bin/env zsh
brew install brew-cask-completion
# Install native apps
brew tap homebrew/cask-fonts

#brew cask install qfinder-pro
brew cask uninstall --force pycharm-ce qfinder-pro evernote macvim openoffice  cakebrew google-chrome owncloud  todotxt tunnelblick  adobe-acrobat-reader clamxav  dropbox thunderbird  unison pineapple arduino flash-player clementine wireshark unetbootin gitkraken virtualbox kitematic sourcetree docker-toolbox garmin-basecamp deepl near-lock java iina

for i in mattermost signal jupyter-notebook-ql atom libreoffice libreoffice-language-pack chromium github psychopy flash-npapi firefox caskroom/fonts/font-symbola caskroom/fonts/font-inconsolata seashore skype the-unarchiver vlc spectacle xquartz qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package meld balenaetcher inkscape zotero signal mendeley scratch
do
  echo '📸  Installing ' $i
  # brew cask uninstall --force $i
  brew cask install $i
done

case $(hostname -s) in
  ada*) brew cask install iterm2-legacy ;; # older macOS
  *) brew cask install iterm2 ;;
esac


# upgrade
brew update; brew cask reinstall `brew outdated --cask --quiet`; brew cleanup
