#!/usr/bin/env bash

# 1. install Xcode:
# From this url : (uncomment the following line)
# open http://itunes.apple.com/us/app/xcode/id497799835?mt=12
# install Xcode on the Mac App Store by clicking on “View in Mac App Store”.
# or simply use the following line:
# xcode-select --install
#sudo rm -rf /Library/Developer/CommandLineTools
sudo xcode-select --install

# 2. install HomeBrew
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

# to reinstall, do:
# rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install -q coreutils
brew install -q rsync
brew install -q git

git config --global core.fileMode false
# sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
brew install -q moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install -q findutils
# Install GNU `sed`, overwriting the built-in `sed`.
brew install -q gnu-sed #--with-default-names
brew install -q zsh
# running `chsh`.
#sudo echo "$(which zsh)" >> /etc/shells
#chsh -s /usr/local/bin/zsh # /bin/zsh
chsh -s /bin/zsh
brew install -q zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install -q romkatv/powerlevel10k/powerlevel10k
brew install -q thefuck
brew install -q htop

# Install `wget` with IRI support.
brew install -q wget #--with-iri

# Install RingoJS and Narwhal.
# Note that the order in which these are installed is important;
# see http://git.io/brew-narwhal-ringo.
#brew install -q ringojs
#brew install -q narwhal
brew uninstall  hardlink

# Install more recent versions of some macOS tools.
brew install -q vim #--with-override-system-vi --without-python --with-python3  --override-system-vi
# brew uninstall homebrew/dupes/grep
# brew uninstall homebrew/dupes/openssh
# brew uninstall homebrew/dupes/screen
brew install -q tmux
brew install -q reattach-to-user-namespace
# brew install -q homebrew/php/php55 --with-gmp
brew install -q opus
brew install -q opus-tools


# Install font tools.
#brew tap bramstein/webfonttools
#brew install -q sfnt2woff
#brew install -q sfnt2woff-zopfli
#brew install -q woff2

# Install some CTF tools; see https://github.com/ctfs/write-ups.
#brew install -q bfg
#brew install -q binutils
#brew install -q binwalk
#brew install -q cifer
#brew install -q dex2jar
#brew install -q dns2tcp
#brew install -q fcrackzip
#brew install -q foremost
#brew install -q hashpump
#brew install -q hydra
#brew install -q john
#brew install -q knock
#brew install -q nmap
#brew install -q pngcheck
#brew install -q socat
#brew install -q sqlmap
#brew install -q tcpflow
#brew install -q tcpreplay
#brew install -q tcptrace
#brew install -q ucspi-tcp # `tcpserver` etc.
# brew uninstall xpdf
#brew install -q xz
brew install -q diff-pdf

# Install other useful binaries.
#brew install -q ack
#brew install -q exiv2
brew install -q git
brew install -q imagemagick #--with-ghostscript --with-webp
brew install -q lua
#brew install -q lynx
#brew install -q p7zip
#brew install -q pigz
#brew install -q pv
#brew install -q rename
#brew install -q rhino
# brew install -q speedtest_cli
brew install -q ssh-copy-id
# brew install -q testssl
brew install -q tree
#brew install -q webkit2png
#brew install -q zopfli


# 3. install common utilities
# Install native apps
brew tap homebrew/cask
brew install -q brew-cask-completion
# brew install -q openssh --with-keychain-support
# brew install -q pkg-config
# brew install -q make
# brew install -q hub

# brew install -q Caskroom/cask/osxfuse
# brew install -q --cask osxfuse
# https://github.com/telepresenceio/telepresence/issues/1654#issuecomment-873538291
brew uninstall sshfs
brew uninstall osxfuse
brew install -q macfuse
#brew install -q sshfs
brew install -q gromgit/fuse/sshfs-mac
brew uninstall encfs
brew install -q gromgit/fuse/encfs-mac

#sudo /bin/cp -RfX /usr/local/opt/osxfuse/Library/Filesystems/osxfusefs.fs /Library/Filesystems
#sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs
# brew install -q clinfo
# brew uninstall --cask todotxt

# brew install -q mpg123
# brew install -q vorbis-tools #--with-flac
brew install -q fdupes
brew install -q cmus # a nice command-line utility to play music files

# brew install -q lftp
# brew uninstall mercurial

brew install -q rtmpdump
brew uninstall libav
brew install -q youtube-dl #--with-rtmpdump

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install -q node
npm install -g npm
npm install -g grunt-cli

brew install -q --cask atom
apm install atom-ide-ui
apm install ide-python
apm install linter-python
apm install python-autopep8
apm install latex
apm install latex-plus
apm install todo-show

# brew install -q --cask tcl
# fun
brew install -q minetest

# academic website
brew install -q go
brew install -q hugo

#! /usr/bin/env zsh
brew install -q brew-cask-completion
# Install native apps
brew tap homebrew/cask-fonts

#brew install -q --cask qfinder-pro
brew uninstall --cask --force element anaconda pycharm-ce qfinder-pro evernote macvim openoffice cakebrew google-chrome owncloud  todotxt tunnelblick  adobe-acrobat-reader clamxav  dropbox thunderbird  unison pineapple arduino flash-player clementine wireshark unetbootin gitkraken virtualbox kitematic sourcetree docker-toolbox deepl near-lock java iina mendeley


for i in signal mattermost signal jupyter-notebook-ql atom libreoffice libreoffice-language-pack chromium github psychopy flash-npapi firefox font-symbola font-inconsolata seashore skype the-unarchiver vlc spectacle xquartz qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package meld balenaetcher inkscape zotero signal scratch gimp homebrew/cask-drivers/garmin-express spectacle signal nteract transmission-remote-gui raspberry-pi-imager
do
  echo '📸  Installing ' $i
  # brew uninstall --cask --force $i
  brew install -q --cask $i
done

case $(hostname -s) in
  ada*) brew install -q --cask iterm2-legacy ;; # older macOS
  *) brew install -q --cask iterm2 ;;
esac


# upgrade
brew update; brew cask reinstall `brew outdated --cask --quiet`; brew cleanup

# 3. fetch and install texlive

# homebrew style cask install
# Install native apps
brew uninstall --cask basictex
brew install -q --cask mactex
brew install -q --cask bibdesk
brew install -q --cask skim
brew install -q --cask texshop
brew install -q --cask tex-live-utility
brew install -q gnupg

# sudo chown -R $USER  /usr/local/texlive
# sudo tlmgr option location http://ctan.mines-albi.fr/systems/texlive/tlnet
#sudo tlmgr option location  http://ftp.math.utah.edu/pub/texlive/tlpretest/
#sudo tlmgr option location http://mirrors.ircam.fr/pub/CTAN/systems/texlive/tlnet/

# update
tlmgr update --self
tlmgr update --all

# tlmgr install adjustbox
# tlmgr install collectbox
# tlmgr install ucs
# tlmgr install collection-fontsrecommended
# tlmgr install collection-latexrecommended

# setting some preferences in TexShop
#defaults write TeXShop NSUserKeyEquivalents -dict-add "Typeset" "@\U21a9"
defaults write TeXShop NSUserKeyEquivalents -dict-add "Typeset" "@t"
defaults write TeXShop "BibTeXengine" -string "biber"
defaults write TeXShop "Encoding"  -string  "UTF-8"

# setting some preferences in BibDesk (see http://invibe.net/LaurentPerrinet/SciBlog/2013-03-06):
defaults write bibdesk "Cite Key Format" -string "%p1%y%u0"
defaults write bibdesk BDSKLocalFileFormatKey -string "%f{Cite Key}%n0%e"
# defaults write bibdesk "Path to the papers folder" -string "Biblio"
defaults write bibdesk "Cite String" -string "citep"
defaults write bibdesk "Cite Key Autogenerate" -int 1
defaults write bibdesk "Cite Key Format Preset" -int 0
defaults write bibdesk "Cite Prepend Tilde" -int 1
defaults write bibdesk "Startup Behavior" -int 4

# Python
PIP="python3 -m pip install -U"
UNPIP="python3 -m pip uninstall -y"

# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
# sh osx_brew_bootstrap.sh

# 3. install python3 and friends
# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
# tip: CFLAGS=-I$(brew --prefix)/include LDFLAGS=-L$(brew --prefix)/lib pip install <package>
#
brew install -q python
# rm /usr/local/bin/python /usr/local/bin/python3
#ln -s /usr/local/bin/python3 /usr/local/bin/python
ln -s /usr/local/bin/python3 /usr/local/bin/python
#ln -s /usr/local/opt/python@3.9/libexec/bin/python3 /usr/local/bin/python
#ln -s /usr/local/opt/python@3.9/libexec/bin/python3 /usr/local/bin/python3
brew uninstall python@2
brew uninstall --ignore-dependencies python@2

# python3 -m ensurepip --upgrade # https://docs.python.org/3.7/library/ensurepip.html
$PIP pip wheel
$PIP setuptools setuptools-scm
$PIP twine

# testing
$PIP coverage
$PIP pytest
$PIP nose

# numpy
# sudo chown -R $(whoami):admin /usr/local
#brew untap homebrew/science
# https://github.com/pytorch/glow
brew install -q opencv
brew install -q cmake graphviz libpng ninja protobuf wget
# brew install -q llvm@7

brew install -q suite-sparse
brew install -q gcc
brew install -q cmake
brew install -q fftw
brew install -q libtool
brew install -q numpy # --without-python@2
# $PIP numpy #--with-openblas
$PIP numexpr
#$PIP numpy
$PIP lazyarray
$PIP sqlalchemy python-dateutil tqdm requests cached_property
brew install -q cython
# ipython -c "import numpy; numpy.test() "
$UNPIP tables
$UNPIP h5py
$PIP pillow
$PIP quantities
$PIP pandas
# https://shapely.readthedocs.io/en/latest/manual.html
$PIP fiona geopandas shapely fitparse
$PIP seaborn
brew uninstall hdf5
$PIP lmfit
$PIP easydict

# editing
# brew install -q vim --override-system-vi # --with-python3
# brew install -q macvim --env-std --override-system-vim --with-python3
# scipy et al
# $PIP scipy # --without-python@2
brew install -q scipy # --without-python@2
# python -c "import scipy; scipy.test() "
$PIP statsmodels
$PIP jedi
$UNPIP nengo

$PIP jedi

$PIP psutil
# pip install -U powerline-status
# sh ../libs/powerline-fonts/install.sh
# mac stuff
$PIP webassets
$PIP markdown
$PIP lxml
$PIP ghp-import2
$PIP nikola
nikola plugin -i rest_html5
nikola plugin -i tx3_tag_cloud
$PIP "Nikola[extras]"
$PIP  rst2html5
$PIP academic
# pylab
$PIP pyparsing
$PIP python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
$PIP matplotlib
# python -c "import pylab; pylab.test() "
$PIP imagen
$PIP dask
$PIP holoviews
$PIP bokeh
$PIP datashader

# editing environment
brew install -q zmq
$PIP pyzmq
$PIP pygments
$PIP tornado
$PIP jsonschema
$PIP terminado
# to use nbconvert with the ipython notebook, you need to install pandoc
brew cask install nteract
# https://github.com/nteract/commuter
# COMMUTER_LOCAL_STORAGE_BASEDIRECTORY=quantic/science commuter
# http://localhost:4000
npm install @nteract/commuter -g

$PIP ipykernel
python3 -m ipykernel install --user
brew install -q pandoc
brew install -q pandoc-citeproc
brew install -q pandoc-crossref
$PIP jinja2

# JUPYTER
$PIP typing-extensions  Pillow babel nbconvert prometheus_client jupyter-contrib-nbextensions jupyter-server
$PIP jupyter
$PIP ipywidgets
jupyter nbextension install --user --py widgetsnbextension
jupyter nbextension enable --py  widgetsnbextension
$PIP jupyterlab # --pre
$PIP voila
$PIP papermill

$PIP ipython[all]
$PIP version-information watermark
$PIP jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
$PIP jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user

$PIP nbdime
nbdime extensions --enable
jupyter nbextension enable nbdime --py

$PIP tqdm
$PIP autopep8
# jupyter labextension uninstall  @ryantam626/jupyterlab_black
# jupyter labextension install @jupyterlab/shortcutui
#jupyter nbextension install https://github.com/kenkoooo/jupyter-autopep8/archive/master.zip --user
#jupyter nbextension enable jupyter-autopep8-master/jupyter-autopep8
# jupyter nbextension uninstall @jupyter-autopep8-master/jupyter-autopep8
# https://github.com/ryantam626/jupyterlab_code_formatter
# $UNPIP jupyterlab_code_formatter jupyterlab_black

$PIP 'python-language-server[all]'

# https://github.com/jupyterlab/jupyterlab-git
$PIP jupyterlab-git
# jupyter labextension install @jupyterlab/git
# jupyter serverextension enable --py jupyterlab_git
# jupyter labextension install @jupyterlab/toc
# jupyter labextension install @jupyter-voila/jupyterlab-preview
# https://github.com/jupyterlab/jupyterlab-latex
$PIP jupyterlab_latex
# jupyter labextension install @jupyterlab/latex
$PIP plotly
# python3 -m pip install git+https://github.com/mkrphys/ipython-tikzmagic

jupyter labextension update --all
jupyter lab build

# HACKS
# brew uninstall pyqt
# brew uninstall qt
# brew uninstall qt@5.7

#
brew install -q sip # --without-python@2
# brew install -q pyqt --without-python@2
$PIP sphinx
$PIP sphinx_rtd_theme
# pygame
# brew install -q --HEAD smpeg
brew uninstall sdl
#brew uninstall sdl2 sdl2_image sdl2_mixer sdl2_ttf  sdl2_gfx sdl2_net
#brew install -q sdl sdl_image sdl_mixer sdl_ttf  sdl_gfx sdl_net

# pyglet
$PIP pyglet
$PIP pygame
$PIP pyOpenGL
$PIP gloo

# 1. install HomeBrew + python
# sh osx_brew_python.sh

# install scientific packages
brew install -q libyaml
$PIP pybtex
#brew install -q --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2

# video utilities
$PIP svgwrite
brew install -q x264
brew install -q ffmpeg # --with-libvorbis --with-libvpx
$PIP decorators
$PIP imageio
$PIP imageio-ffmpeg
$PIP tqdm
#$PIP git+https://github.com/meduz/moviepy@moviepy3
$PIP gizeh
# $PIP moviepy
# $PIP https://github.com/Zulko/moviepy
$PIP moviepy pygifsicle
brew install -q povray
$PIP vapory
# $PIP git+https://github.com/vispy/vispy.git
$PIP vispy
$PIP napari
$PIP pyprind
$PIP pdfrw
python3 -m pip uninstall  itk

# science
$PIP MotionClouds
# brew tap homebrew/science
brew install -q mkl-dnn
$PIP mkl-devel
$PIP onnx
$PIP pyyaml
brew install -q protobuf # --without-python@2 --with-python
# brew install -q tbb
# mathematics
$PIP sympy
#machine learning
$PIP joblib
# $PIP git+https://github.com/meduz/scikit-learn@sparsenet
$PIP scikit-learn

# neuromorphic
brew uninstall rust
brew install -q rustup-init
$PIP parameterized loris tonic
# $PIP git+https://github.com/scikit-learn/scikit-learn
$PIP scikit-image
# BICV
# $PIP git+https://github.com/bicv/SLIP
# $PIP git+https://github.com/bicv/LogGabor
# $PIP git+https://github.com/bicv/SparseEdges
# $PIP SparseEdges
# deep learning
# $PIP tensorflow
# python3 -m pip install tensorflow==1.14.0
# python3 -m pip install tensorflow-estimator==1.14.0
# python3 -m pip install tensorboard==1.14.0

#wget https://download.pytorch.org/whl/cpu/torch-1.7.0-cp38-none-macosx_10_9_x86_64.whl -0 /tmp/torch-1.7.0-cp39-none-macosx_10_9_x86_64.whl
#python3 -m pip install /tmp/torch-1.7.0-cp39-none-macosx_10_9_x86_64.whl # torch==1.1.0
#python3 -m pip install torchvision #==0.2.1
brew uninstall libtorch torchvision
$PIP torch torchvision pytorch_msssim
$PIP dlib
# $PIP torchvision-enhance
#python3 -m pip install -U

#$PIP python-pygaze
#python3 -m pip install git+https://github.com/esdalmaijer/PyGazeAnalyser

# neuralensemble
brew install -q gsl
$PIP neo
$PIP interval
$PIP NeuroTools
$UNPIP brian2 brian2genn
$PIP csa
brew install -q nest
$PIP pynn

# latex, bibliography and friends
# sh osx_install_tex_live.sh
brew install -q bib-tool
$PIP bibtexparser
# brew install -q python
# pyenv global homebrew
# pyenv rehash

# PAPIS https://papis.readthedocs.io/en/latest/install.html
# $PIP papis
# $PIP papis-zotero

# pip2 install -U pip setuptools
# python2 -m pip install ipykernel
# python2 -m ipykernel install --user
# pip2 install beets
# pip2 install flask
# pip2 install pylast
# pip2 install discogs_client
# brew install -q chromaprint
# pip2 install  pyacoustid
# brew install -q wxpython
# pip2 install -U configobj
# $PIP git+https://github.com/psychopy/psychopy
brew install -q c-blosc
$PIP tables
$PIP psychopy

$PIP pypng
$PIP pyqrcode


# brew tap brewsci/science
# brew tap brewsci/bio

brew uninstall --ignore-dependencies python@2
# Remove outdated versions from the cellar
# brew cleanup

# Remove outdated versions from the cellar
# brew cleanup
