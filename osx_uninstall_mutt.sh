
brew uninstall offlineimap
brew uninstall kevwil/patches/mutt --with-sidebar-patch --with-trash-patch

brew uninstall msmtp
brew uninstall contacts
brew uninstall notmuch
brew uninstall urlview

rm -fr ~/.mutt
rm .offlineimaprc .notmuch-config .msmtprc .urlview .tmux.conf
