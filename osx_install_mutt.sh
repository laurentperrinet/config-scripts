
# brew install mutt 
# a nice command-line utility to read and send e-mails
brew install offlineimap
brew install sqlite
#brew tap mrtazz/misc
#brew uninstall mrtazz/misc/mutt --with-sidebar-patch
#brew install mutt
brew tap kevwil/patches
brew install kevwil/patches/mutt --with-sidebar-patch --with-trash-patch

brew install msmtp
brew install contacts
brew install notmuch
brew install urlview

mkdir -p ~/.mutt/cache/bodies
mkdir -p ~/.mutt/cache/headers
# wget -O ~/.mutt/certificates http://www.geotrust.com/resources/extended-validation-ssl/certs/Equifax%20Secure%20Certificate%20Authority.crt
mkdir -p ~/mail
mkdir -p ~/mail/home
mkdir -p ~/mail/work
mkdir -p ~/mail/local
