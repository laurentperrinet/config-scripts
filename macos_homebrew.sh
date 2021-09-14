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

BREW="brew install -q"
UNBREW="brew uninstall"


# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
$BREW coreutils
$BREW rsync
$BREW git

git config --global core.fileMode false
# sudo ln -s /usr/local/bin/gsha256sum /usr/local/bin/sha256sum

# Install some other useful utilities like `sponge`.
$BREW moreutils
# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
$BREW findutils
# Install GNU `sed`, overwriting the built-in `sed`.
$BREW gnu-sed #--with-default-names
$BREW zsh
# running `chsh`.
#sudo echo "$(which zsh)" >> /etc/shells
#chsh -s /usr/local/bin/zsh # /bin/zsh
chsh -s /bin/zsh
$BREW zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

$BREW romkatv/powerlevel10k/powerlevel10k
$BREW thefuck
$BREW htop

# Install `wget` with IRI support.
$BREW wget #--with-iri
# $UNBREW hardlink

# Install more recent versions of some macOS tools.
$BREW vim #--with-override-system-vi --without-python --with-python3  --override-system-vi
# $UNBREW homebrew/dupes/grep
# $UNBREW homebrew/dupes/openssh
# $UNBREW homebrew/dupes/screen
$BREW tmux
$BREW reattach-to-user-namespace
# $BREW homebrew/php/php55 --with-gmp
$BREW opus
$BREW opus-tools


# Install some CTF tools; see https://github.com/ctfs/write-ups.
$BREW diff-pdf

# Install other useful binaries.
#$BREW ack
#$BREW exiv2
$BREW git
$BREW imagemagick #--with-ghostscript --with-webp
$BREW lua
#$BREW lynx
#$BREW p7zip
#$BREW pigz
#$BREW pv
#$BREW rename
#$BREW rhino
# $BREW speedtest_cli
$BREW ssh-copy-id
# $BREW testssl
$BREW tree
#$BREW webkit2png
#$BREW zopfli


# 3. install common utilities
# Install native apps
brew tap homebrew/cask
$BREW brew-cask-completion
# $BREW openssh --with-keychain-support
# $BREW pkg-config
# $BREW make
# $BREW hub

# $BREW Caskroom/cask/osxfuse
# $BREW --cask osxfuse
# https://github.com/telepresenceio/telepresence/issues/1654#issuecomment-873538291
# $UNBREW sshfs
# $UNBREW osxfuse
$BREW macfuse
#$BREW sshfs
$BREW gromgit/fuse/sshfs-mac
#$UNBREW encfs
$BREW gromgit/fuse/encfs-mac

#sudo /bin/cp -RfX /usr/local/opt/osxfuse/Library/Filesystems/osxfusefs.fs /Library/Filesystems
#sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs
# $BREW clinfo
# $UNBREW --cask todotxt

# $BREW mpg123
# $BREW vorbis-tools #--with-flac
$BREW fdupes
$BREW cmus # a nice command-line utility to play music files

# $BREW lftp
# $UNBREW mercurial

$BREW rtmpdump
$UNBREW libav
$BREW youtube-dl #--with-rtmpdump

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
$BREW node
npm install -g npm
npm install -g grunt-cli

$BREW --cask atom
apm install atom-ide-ui
apm install ide-python
apm install linter-python
apm install python-autopep8
apm install latex
apm install latex-plus
apm install todo-show

# $BREW --cask tcl
# fun
$BREW minetest

# academic website
$BREW go
$BREW hugo

#! /usr/bin/env zsh
$BREW brew-cask-completion
# Install native apps
brew tap homebrew/cask-fonts

#$BREW --cask qfinder-pro
$UNBREW --cask --force element anaconda pycharm-ce qfinder-pro evernote macvim openoffice cakebrew google-chrome owncloud  todotxt tunnelblick  adobe-acrobat-reader clamxav  dropbox thunderbird  unison pineapple arduino flash-player clementine wireshark unetbootin gitkraken virtualbox kitematic sourcetree docker-toolbox deepl near-lock java iina mendeley


for i in signal mattermost iterm2 jupyter-notebook-ql atom libreoffice libreoffice-language-pack chromium github psychopy flash-npapi firefox font-symbola font-inconsolata seashore skype the-unarchiver vlc xquartz qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package meld balenaetcher inkscape zotero scratch gimp homebrew/cask-drivers/garmin-express spectacle nteract transmission-remote-gui raspberry-pi-imager
do
  echo '📸  Installing ' $i
  # $UNBREW --cask --force $i
  $BREW --cask $i
done

# case $(hostname -s) in
#   ada*) $BREW --cask iterm2-legacy ;; # older macOS
#   *) $BREW --cask iterm2 ;;
# esac

# upgrade
brew cask reinstall `brew outdated --cask --quiet`

# 3. fetch and install texlive

# homebrew style cask install
# Install native apps
$UNBREW --cask basictex
$BREW --cask mactex
$BREW --cask bibdesk
$BREW --cask skim
$BREW --cask texshop
$BREW --cask tex-live-utility
$BREW gnupg

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
PIP="python3 -m pip install -U -q"
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
$BREW python
# rm /usr/local/bin/python /usr/local/bin/python3
#ln -s /usr/local/bin/python3 /usr/local/bin/python
ln -s /usr/local/bin/python3 /usr/local/bin/python
#ln -s /usr/local/opt/python@3.9/libexec/bin/python3 /usr/local/bin/python
#ln -s /usr/local/opt/python@3.9/libexec/bin/python3 /usr/local/bin/python3
$UNBREW python@2
$UNBREW --ignore-dependencies python@2

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
$BREW opencv
$BREW cmake graphviz libpng ninja protobuf wget
# $BREW llvm@7

$BREW suite-sparse
$BREW gcc
$BREW cmake
$BREW fftw
$BREW libtool
$BREW numpy # --without-python@2
# $PIP numpy #--with-openblas
$PIP numexpr
#$PIP numpy
$PIP lazyarray
$PIP sqlalchemy python-dateutil tqdm requests cached_property
$BREW cython
# ipython -c "import numpy; numpy.test() "
$UNPIP tables
$UNPIP h5py
$PIP pillow
$PIP quantities
$PIP pandas
# https://shapely.readthedocs.io/en/latest/manual.html
$PIP fiona geopandas shapely fitparse
$PIP seaborn
$UNBREW hdf5
$PIP lmfit
$PIP easydict

# editing
# $BREW vim --override-system-vi # --with-python3
# $BREW macvim --env-std --override-system-vim --with-python3
# scipy et al
# $PIP scipy # --without-python@2
$BREW scipy # --without-python@2
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
$BREW zmq
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
$BREW pandoc
$BREW pandoc-citeproc
$BREW pandoc-crossref
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
# $UNBREW pyqt
# $UNBREW qt
# $UNBREW qt@5.7

#
$BREW sip # --without-python@2
# $BREW pyqt --without-python@2
$PIP sphinx
$PIP sphinx_rtd_theme
# pygame
# $BREW --HEAD smpeg
$UNBREW sdl
#$UNBREW sdl2 sdl2_image sdl2_mixer sdl2_ttf  sdl2_gfx sdl2_net
#$BREW sdl sdl_image sdl_mixer sdl_ttf  sdl_gfx sdl_net

# pyglet
$PIP pyglet
$PIP pygame
$PIP pyOpenGL
$PIP gloo

# 1. install HomeBrew + python
# sh osx_brew_python.sh

# install scientific packages
$BREW libyaml
$PIP pybtex
#$BREW --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2

# video utilities
$PIP svgwrite
$BREW x264
$BREW ffmpeg # --with-libvorbis --with-libvpx
$PIP decorators
$PIP imageio
$PIP imageio-ffmpeg
$PIP tqdm
#$PIP git+https://github.com/meduz/moviepy@moviepy3
$PIP gizeh
# $PIP moviepy
# $PIP https://github.com/Zulko/moviepy
$PIP moviepy pygifsicle
$BREW povray
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
$BREW mkl-dnn
$PIP mkl-devel
$PIP onnx
$PIP pyyaml
$BREW protobuf # --without-python@2 --with-python
# $BREW tbb
# mathematics
$PIP sympy
#machine learning
$PIP joblib
# $PIP git+https://github.com/meduz/scikit-learn@sparsenet
$PIP scikit-learn

# neuromorphic
$UNBREW rust
$BREW rustup-init
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
$UNBREW libtorch torchvision
$PIP torch torchvision pytorch_msssim
$PIP dlib
# $PIP torchvision-enhance
#python3 -m pip install -U

#$PIP python-pygaze
#python3 -m pip install git+https://github.com/esdalmaijer/PyGazeAnalyser

# neuralensemble
$BREW gsl
$PIP neo
$PIP interval
$PIP NeuroTools
$UNPIP brian2 brian2genn
$PIP csa
$BREW nest
$PIP pynn

# latex, bibliography and friends
# sh osx_install_tex_live.sh
$BREW bib-tool
$PIP bibtexparser
# $BREW python
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
# $BREW chromaprint
# pip2 install  pyacoustid
# $BREW wxpython
# pip2 install -U configobj
# $PIP git+https://github.com/psychopy/psychopy
$BREW c-blosc
$PIP tables
$PIP psychopy

$PIP pypng
$PIP pyqrcode


# brew tap brewsci/science
# brew tap brewsci/bio

# $UNBREW --ignore-dependencies python@2
# Remove outdated versions from the cellar
brew cleanup
