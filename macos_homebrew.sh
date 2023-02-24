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
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"


# to reinstall, do:
# rm -rf /usr/local/Cellar /usr/local/.git && brew cleanup

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

BREW="brew install "
UNBREW="brew uninstall"


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
# chsh -s /bin/zsh
brew install -q zsh-completions
sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"

brew install -q romkatv/powerlevel10k/powerlevel10k
brew install -q thefuck
brew install -q htop

# Install `wget` with IRI support.
brew install -q wget #--with-iri
# brew uninstall -y hardlink

# Install more recent versions of some macOS tools.
brew install -q vim #--with-override-system-vi --without-python --with-python3  --override-system-vi
# brew uninstall -y homebrew/dupes/grep
# brew uninstall -y homebrew/dupes/openssh
# brew uninstall -y homebrew/dupes/screen
brew install -q tmux
brew install -q reattach-to-user-namespace
# brew install -q homebrew/php/php55 --with-gmp
brew install -q opus
brew install -q opus-tools


# Install some CTF tools; see https://github.com/ctfs/write-ups.
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
# brew install -q ssh-copy-id
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
# brew uninstall -y sshfs
# brew uninstall -y osxfuse
brew install -q macfuse
#brew install -q sshfs
brew install -q gromgit/fuse/sshfs-mac
#brew uninstall -y encfs
brew install -q gromgit/fuse/encfs-mac

#sudo /bin/cp -RfX /usr/local/opt/osxfuse/Library/Filesystems/osxfusefs.fs /Library/Filesystems
#sudo chmod +s /Library/Filesystems/osxfusefs.fs/Support/load_osxfusefs
# brew install -q clinfo
# brew uninstall -y --cask todotxt

# brew install -q mpg123
# brew install -q vorbis-tools #--with-flac
brew install -q fdupes
brew install -q cmus # a nice command-line utility to play music files

# brew install -q lftp
# brew uninstall -y mercurial

brew install -q rtmpdump
brew uninstall -y libav
brew install -q yt-dlp #--with-rtmpdump

# Install Node.js. Note: this installs `npm` too, using the recommended
# installation method.
brew install -q node
npm install -g npm
npm install -g grunt-cli

# brew install -q --cask atom
# apm install atom-ide-ui
# apm install ide-python
# apm install linter-python
# apm install python-autopep8
# apm install latex
# apm install latex-plus
# apm install todo-show

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
brew tap homebrew/cask-drivers

#brew install -q --cask qfinder-pro
brew uninstall -y --cask --force element anaconda pycharm-ce qfinder-pro evernote macvim openoffice cakebrew google-chrome owncloud  todotxt tunnelblick  adobe-acrobat-reader clamxav  dropbox thunderbird  unison pineapple arduino flash-player clementine wireshark unetbootin gitkraken virtualbox kitematic sourcetree docker-toolbox deepl near-lock java iina mendeley firefox xquartz nteract

for i in signal mattermost iterm2 jupyter-notebook-ql atom libreoffice libreoffice-language-pack chromium github psychopy flash-npapi font-symbola font-inconsolata seashore skype the-unarchiver vlc qlcolorcode qlstephen qlmarkdown quicklook-json qlprettypatch quicklook-csv webpquicklook suspicious-package meld balenaetcher inkscape zotero scratch gimp garmin-express spectacle  transmission-remote-gui raspberry-pi-imager visual-studio-code
do
  echo '📸  Installing ' $i
  # brew uninstall -y --cask --force $i
  brew install -q --cask $i
done

# case $(hostname -s) in
#   ada*) brew install -q --cask iterm2-legacy ;; # older macOS
#   *) brew install -q --cask iterm2 ;;
# esac

# upgrade
brew cask reinstall `brew outdated --cask --quiet`

# 3. fetch and install texlive

# homebrew style cask install
# Install native apps
brew uninstall -y --cask basictex
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
brew install -q python
# rm /usr/local/bin/python /usr/local/bin/python3
#ln -s /usr/local/bin/python3 /usr/local/bin/python
ln -s /usr/local/bin/python3 /usr/local/bin/python
#ln -s /usr/local/opt/python@3.9/libexec/bin/python3 /usr/local/bin/python
#ln -s /usr/local/opt/python@3.9/libexec/bin/python3 /usr/local/bin/python3
brew uninstall -y python@2
brew uninstall -y --ignore-dependencies python@2

# python3 -m ensurepip --upgrade # https://docs.python.org/3.7/library/ensurepip.html
python3 -m pip install -U -q pip wheel
python3 -m pip install -U -q setuptools setuptools-scm
python3 -m pip install -U -q twine

# testing
python3 -m pip install -U -q coverage
python3 -m pip install -U -q pytest
python3 -m pip install -U -q nose

# numpy
# sudo chown -R $(whoami):admin /usr/local
#brew untap homebrew/science
# https://github.com/pytorch/glow
brew install -q opencv
brew install -q cmake graphviz libpng ninja protobuf wget
# brew install -q llvm@7

# https://inivation.gitlab.io/dv/dv-docs/docs/getting-started/
brew tap inivation/inivation
brew install -q libcaer --with-libserialport --with-opencv
brew install -q dv-runtime


brew install -q suite-sparse
brew install -q gcc
brew install -q cmake
brew install -q fftw
brew install -q libtool
brew install -q numpy # --without-python@2
# python3 -m pip install -U -q numpy #--with-openblas
python3 -m pip install -U -q numexpr
#python3 -m pip install -U -q numpy
python3 -m pip install -U -q lazyarray
python3 -m pip install -U -q sqlalchemy python-dateutil tqdm requests cached_property
brew install -q cython
# ipython -c "import numpy; numpy.test() "
python3 -m pip uninstall -y tables
python3 -m pip uninstall -y h5py
python3 -m pip install -U -q pillow
python3 -m pip install -U -q quantities
python3 -m pip install -U -q pandas
# https://shapely.readthedocs.io/en/latest/manual.html
python3 -m pip install -U -q fiona geopandas shapely fitparse
python3 -m pip install -U -q seaborn
brew uninstall -y hdf5
python3 -m pip install -U -q lmfit
python3 -m pip install -U -q easydict

# editing
# brew install -q vim --override-system-vi # --with-python3
# brew install -q macvim --env-std --override-system-vim --with-python3
# scipy et al
# python3 -m pip install -U -q scipy # --without-python@2
brew install -q scipy # --without-python@2
# python -c "import scipy; scipy.test() "
python3 -m pip install -U -q statsmodels
python3 -m pip install -U -q jedi
python3 -m pip uninstall -y nengo

python3 -m pip install -U -q jedi

python3 -m pip install -U -q psutil
# pip install -U powerline-status
# sh ../libs/powerline-fonts/install.sh
# mac stuff
python3 -m pip install -U -q webassets
python3 -m pip install -U -q markdown
python3 -m pip install -U -q lxml
python3 -m pip install -U -q ghp-import2
python3 -m pip install -U -q nikola
nikola plugin -i rest_html5
nikola plugin -i tx3_tag_cloud
python3 -m pip install -U -q "Nikola[extras]"
python3 -m pip install -U -q  rst2html5
python3 -m pip install -U -q academic
# pylab
python3 -m pip install -U -q pyparsing
python3 -m pip install -U -q python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
python3 -m pip install -U -q matplotlib
# python -c "import pylab; pylab.test() "
python3 -m pip install -U -q imagen
python3 -m pip install -U -q dask
python3 -m pip install -U -q holoviews
python3 -m pip install -U -q bokeh
python3 -m pip install -U -q datashader

# editing environment
brew install -q zmq
python3 -m pip install -U -q pyzmq
python3 -m pip install -U -q pygments
python3 -m pip install -U -q tornado
python3 -m pip install -U -q jsonschema
python3 -m pip install -U -q terminado
# to use nbconvert with the ipython notebook, you need to install pandoc
brew cask install nteract
# https://github.com/nteract/commuter
# COMMUTER_LOCAL_STORAGE_BASEDIRECTORY=quantic/science commuter
# http://localhost:4000
npm install @nteract/commuter -g

python3 -m pip install -U -q ipykernel
python3 -m ipykernel install --user
brew install -q pandoc
brew install -q pandoc-citeproc
brew install -q pandoc-crossref
python3 -m pip install -U -q jinja2

# JUPYTER
python3 -m pip install -U -q typing-extensions  Pillow babel nbconvert prometheus_client jupyter-contrib-nbextensions jupyter-server
python3 -m pip install -U -q jupyter
python3 -m pip install -U -q ipywidgets
# jupyter nbextension install --user --py widgetsnbextension
# jupyter nbextension enable --py  widgetsnbextension
python3 -m pip install -U -q jupyterlab # --pre
python3 -m pip install -U -q voila
python3 -m pip install -U -q papermill

python3 -m pip install -U -q ipython[all]
# python3 -m pip install -U -q version-information watermark
# python3 -m pip install -U -q jupyter_contrib_nbextensions
# jupyter contrib nbextension install --user
# python3 -m pip install -U -q jupyter_nbextensions_configurator
# jupyter nbextensions_configurator enable --user

python3 -m pip install -U -q nbdime
# nbdime extensions --enable
# jupyter nbextension enable nbdime --py

python3 -m pip install -U -q tqdm
python3 -m pip install -U -q autopep8
# jupyter labextension uninstall  @ryantam626/jupyterlab_black
# jupyter labextension install @jupyterlab/shortcutui
#jupyter nbextension install https://github.com/kenkoooo/jupyter-autopep8/archive/master.zip --user
#jupyter nbextension enable jupyter-autopep8-master/jupyter-autopep8
# jupyter nbextension uninstall @jupyter-autopep8-master/jupyter-autopep8
# https://github.com/ryantam626/jupyterlab_code_formatter
# python3 -m pip uninstall -y jupyterlab_code_formatter jupyterlab_black

python3 -m pip install -U -q 'python-language-server[all]'

# https://github.com/jupyterlab/jupyterlab-git
# python3 -m pip install -U -q jupyterlab-git
# jupyter labextension install @jupyterlab/git
# jupyter serverextension enable --py jupyterlab_git
# jupyter labextension install @jupyterlab/toc
# jupyter labextension install @jupyter-voila/jupyterlab-preview
# https://github.com/jupyterlab/jupyterlab-latex
# python3 -m pip install -U -q jupyterlab_latex
# jupyter labextension install @jupyterlab/latex
python3 -m pip install -U -q plotly
# python3 -m pip install git+https://github.com/mkrphys/ipython-tikzmagic

jupyter labextension update --all
jupyter lab build

# HACKS
# brew uninstall -y pyqt
# brew uninstall -y qt
# brew uninstall -y qt@5.7

#
brew install -q sip # --without-python@2
# brew install -q pyqt --without-python@2
python3 -m pip install -U -q sphinx
python3 -m pip install -U -q sphinx_rtd_theme
# pygame
# brew install -q --HEAD smpeg
brew uninstall -y sdl
#brew uninstall -y sdl2 sdl2_image sdl2_mixer sdl2_ttf  sdl2_gfx sdl2_net
#brew install -q sdl sdl_image sdl_mixer sdl_ttf  sdl_gfx sdl_net

# pyglet
python3 -m pip install -U -q pyglet
python3 -m pip install -U -q pygame
python3 -m pip install -U -q pyOpenGL
python3 -m pip install -U -q gloo

# 1. install HomeBrew + python
# sh osx_brew_python.sh

# install scientific packages
brew install -q libyaml
python3 -m pip install -U -q pybtex
#brew install -q --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2

# video utilities
python3 -m pip install -U -q svgwrite
brew install -q x264
brew install -q ffmpeg # --with-libvorbis --with-libvpx
python3 -m pip install -U -q decorators
python3 -m pip install -U -q imageio
python3 -m pip install -U -q imageio-ffmpeg
python3 -m pip install -U -q tqdm
#python3 -m pip install -U -q git+https://github.com/meduz/moviepy@moviepy3
python3 -m pip install -U -q gizeh
# python3 -m pip install -U -q moviepy
# python3 -m pip install -U -q https://github.com/Zulko/moviepy
python3 -m pip install -U -q moviepy pygifsicle
brew install -q povray
python3 -m pip install -U -q vapory
# python3 -m pip install -U -q git+https://github.com/vispy/vispy.git
python3 -m pip install -U -q vispy
python3 -m pip install -U -q napari
python3 -m pip install -U -q pyprind
python3 -m pip install -U -q pdfrw
python3 -m pip uninstall  itk

# science
python3 -m pip install -U -q MotionClouds
# brew tap homebrew/science
brew install -q mkl-dnn
python3 -m pip install -U -q mkl-devel
python3 -m pip install -U -q onnx
python3 -m pip install -U -q pyyaml
brew install -q protobuf # --without-python@2 --with-python
# brew install -q tbb
# mathematics
python3 -m pip install -U -q sympy
#machine learning
python3 -m pip install -U -q joblib
# python3 -m pip install -U -q git+https://github.com/meduz/scikit-learn@sparsenet
python3 -m pip install -U -q scikit-learn

# neuromorphic
brew uninstall -y rust
brew install -q rustup-init
python3 -m pip install -U -q parameterized loris tonic
# python3 -m pip install -U -q git+https://github.com/scikit-learn/scikit-learn
python3 -m pip install -U -q scikit-image
# BICV
# python3 -m pip install -U -q git+https://github.com/bicv/SLIP
# python3 -m pip install -U -q git+https://github.com/bicv/LogGabor
# python3 -m pip install -U -q git+https://github.com/bicv/SparseEdges
# python3 -m pip install -U -q SparseEdges
# deep learning
# python3 -m pip install -U -q tensorflow
# python3 -m pip install tensorflow==1.14.0
# python3 -m pip install tensorflow-estimator==1.14.0
# python3 -m pip install tensorboard==1.14.0

#wget https://download.pytorch.org/whl/cpu/torch-1.7.0-cp38-none-macosx_10_9_x86_64.whl -0 /tmp/torch-1.7.0-cp39-none-macosx_10_9_x86_64.whl
#python3 -m pip install /tmp/torch-1.7.0-cp39-none-macosx_10_9_x86_64.whl # torch==1.1.0
#python3 -m pip install torchvision #==0.2.1
brew uninstall -y libtorch torchvision
python3 -m pip install -U -q torch torchvision pytorch_msssim
python3 -m pip install -U -q dlib
# python3 -m pip install -U -q torchvision-enhance
#python3 -m pip install -U

#python3 -m pip install -U -q python-pygaze
#python3 -m pip install git+https://github.com/esdalmaijer/PyGazeAnalyser

# neuralensemble
brew install -q gsl
python3 -m pip install -U -q neo
python3 -m pip install -U -q interval
python3 -m pip install -U -q NeuroTools
python3 -m pip uninstall -y brian2 brian2genn
python3 -m pip install -U -q csa
brew install -q nest
python3 -m pip install -U -q pynn

# latex, bibliography and friends
# sh osx_install_tex_live.sh
brew install -q bib-tool
python3 -m pip install -U -q bibtexparser
# brew install -q python
# pyenv global homebrew
# pyenv rehash

# PAPIS https://papis.readthedocs.io/en/latest/install.html
# python3 -m pip install -U -q papis
# python3 -m pip install -U -q papis-zotero

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
# python3 -m pip install -U -q git+https://github.com/psychopy/psychopy
brew install -q c-blosc
python3 -m pip install -U -q tables
python3 -m pip install -U -q psychopy

python3 -m pip install -U -q pypng
python3 -m pip install -U -q pyqrcode


# brew tap brewsci/science
# brew tap brewsci/bio

# brew uninstall -y --ignore-dependencies python@2
# Remove outdated versions from the cellar
brew cleanup
