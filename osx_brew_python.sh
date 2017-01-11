#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
# sh osx_brew_bootstrap.sh

# 3. install python3 and friends
# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
brew install --universal python3

export PIP3_IN='pip3 install  --upgrade '
eval ${PIP3_IN} pip
eval ${PIP3_IN} setuptools
# python -m ensurepip --upgrade # https://docs.python.org/2/library/ensurepip.html
pip3 uninstall -q -y conda
# testing
pip3 install -U coverage
pip3 install -U pytest
pip3 install -U nose

# numpy
# sudo chown -R $(whoami):admin /usr/local
brew tap homebrew/science
brew install suite-sparse
brew install gcc
brew install cmake
brew install fftw
brew install libtool
# pip3 install -U numpy #--with-openblas
# pip3 uninstall -q -y numpy #--with-openblas
pip3 install -U numexpr
#pip3 install -U numpy
pip3 install -U lazyarray
brew install numpy --without-check --with-python3 #--with-openblas
pip3 install -U cython
# ipython -c "import numpy; numpy.test() "
pip3 install -U tables
pip3 install -U h5py
pip3 install -U pillow
pip3 install -U quantities
pip3 install -U pandas
pip3 install -U seaborn
brew install hdf5
pip3 install -U lmfit


# editing
# brew install vim --override-system-vi # --with-python3
# brew install macvim --env-std --override-system-vim --with-python3
brew uninstall macvim
# scipy et al
pip3 install -U scipy #--with-openblas
# python -c "import scipy; scipy.test() "
pip3 install -U statsmodels

pip3 install -U jedi

pip3 install -U psutil
# pip install -U powerline-status
# sh ../libs/powerline-fonts/install.sh
# mac stuff
pip3 install -U webassets
pip3 install -U markdown
pip3 install -U lxml
nikola plugin -i rest_html5
nikola plugin -i tx3_tag_cloud
pip3 install -U "Nikola[extras]"
pip3 install --upgrade  rst2html5
# pylab
pip3 install -U pyparsing
pip3 install -U python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
pip3 install -U matplotlib --pre
# python -c "import pylab; pylab.test() "
pip3 install -U imagen
pip3 install -U holoviews
pip3 install -U bokeh

# editing environment
brew install zmq
pip3 install -U pyzmq
pip3 install -U pygments
pip3 install -U tornado
pip3 install -U jsonschema
pip3 install -U terminado
# to use nbconvert with the ipython notebook, you need to install pandoce
brew cask install nteract
python3 -m pip install ipykernel
python3 -m ipykernel install --user
brew install pandoc
pip3 install -U jinja2
pip3 install -U jupyter
pip3 install -U jupyterlab
pip3 install -U ipython[all]
pip3 uninstall -q -y runipy
pip3 install -U version-information watermark
# pip3 install -U https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master
pip3 install -U jupyter_contrib_nbextensions
pip3 install -U jupyter_nbextensions_configurator
jupyter contrib nbextension install --user
jupyter nbextensions_configurator enable --user
pip3 install nbtutor
jupyter nbextension install --overwrite --py nbtutor
jupyter nbextension enable --py nbtutor
jupyter nbextension enable nbtutor --py
pip3 install nbdime


#
brew install sip
brew uninstall qt
brew uninstall pyqt
brew install pyqt5
pip3 install -U sphinx

# pygame
# brew install --HEAD smpeg

# pyglet
pip3 install -U pyglet
pip3 install -U pyOpenGL
pip3 install -U gloo

# 1. install HomeBrew + python
# sh osx_brew_python.sh

# install scientific packages
brew install libyaml
pip3 install -U pybtex
#brew install --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2

# video utilities
pip3 install -U svgwrite
brew install imagemagick
brew install x264
brew install ffmpeg --with-libvorbis --with-libvpx
pip3 install -U decorators
pip3 install -U imageio
pip3 install -U tqdm
#pip3 install -U git+https://github.com/meduz/moviepy@moviepy3
pip3 install -U gizeh
# pip3 install -U moviepy
# pip3 install -U https://github.com/Zulko/moviepy
pip3 install -U moviepy
brew install povray
pip3 install -U vapory
# pip3 install -U git+https://github.com/vispy/vispy.git
pip3 install -U vispy

pip3 install -U pyprind


brew tap homebrew/science
brew install tbb
brew uninstall homebrew/science/opencv
brew install opencv3 --with-python3 --with-ffmpeg --with-contrib
echo /usr/local/opt/opencv3/lib/python3.5/site-packages > /usr/local/lib/python3.5/site-packages/opencv3.pth
# pip install -U https://github.com/sightmachine/SimpleCV/zipball/master
pip3 uninstall -q -y SimpleCV
# mathematics
pip3 install -U sympy
#machine learning
pip3 install -U joblib
# pip3 install -U git+https://github.com/meduz/scikit-learn@sparsenet
pip3 install -U scikit-learn
pip3 install -U scikit-image

# neuralensemble
brew install gsl
pip3 install -U neo
pip3 install -U interval
pip3 install -U NeuroTools
pip3 install -U brian2
pip3 install -U brian2tools
pip3 install -U pynn

# latex, bibliography and friends
# sh osx_install_tex_live.sh
brew install bib-tool

brew install python
# pyenv global homebrew
# pyenv rehash

# pip2 install --upgrade pip setuptools
python2 -m pip install ipykernel
python2 -m ipykernel install --user
# pip2 install beets
# pip2 install flask
# pip2 install pylast
# pip2 install discogs_client
# brew install chromaprint
# pip2 install  pyacoustid
brew install wxpython
pip2 install -U configobj
# pip2 install -U git+https://github.com/psychopy/psychopy
pip2 install -U psychopy

brew linkapps
# Remove outdated versions from the cellar
brew cleanup
