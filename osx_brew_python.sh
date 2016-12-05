#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
# sh osx_brew_bootstrap.sh

# 3. uninstall python2 and friends
# brew uninstall python
# rm -fr /usr/local/lib/python2.7

# 4. install python3 and friends
# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
# rm -fr /usr/local/lib/python3.4
brew uninstall pyenv
# pyenv install 2.7.9
# pyenv global 2.7.9
# pyenv install 3.4.3
# pyenv global 3.4.3
brew uninstall python
# ln -s $(brew --cellar) ~/.pyenv/versions/homebrew
brew install --universal python3
# pyenv global homebrew
# pyenv rehash

pip3 install --upgrade pip setuptools
# python -m ensurepip --upgrade # https://docs.python.org/2/library/ensurepip.html
pip3 uninstall -y pip-tools
pip3 install -U conda
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
# pip3 uninstall -y numpy #--with-openblas
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
brew install macvim --env-std --override-system-vim --with-python3
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
pip3 install -U nikola
pip3 install --upgrade  rst2html5
nikola plugin -i rest_html5
nikola plugin -i tx3_tag_cloud
# pylab
pip3 install -U pyparsing
pip3 install -U python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
pip3 install -U matplotlib
# python -c "import pylab; pylab.test() "
pip3 install -U imagen
pip3 install -U holoviews
pip3 install -U bokeh
pip3 install -U imageio

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
pip3 uninstall -y runipy
pip3 install -U version-information watermark
#
brew install sip
brew install pyqt
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
pip3 install -U https://github.com/Zulko/moviepy
brew install povray
pip3 install -U vapory
pip3 install -U git+https://github.com/vispy/vispy.git

brew install wxpython
pip3 install -U configobj
pip3 install -U git+https://github.com/psychopy/psychopy
pip3 install -U pyprind

brew tap homebrew/science
brew install tbb
brew uninstall homebrew/science/opencv
brew install opencv3 --with-python3 --with-ffmpeg --with-contrib
echo /usr/local/opt/opencv3/lib/python3.5/site-packages > /usr/local/lib/python3.5/site-packages/opencv3.pth
# pip install -U https://github.com/sightmachine/SimpleCV/zipball/master
pip3 uninstall -y SimpleCV
# mathematics
pip3 install -U sympy
#machine learning
pip3 install -U joblib
pip3 install -U git+https://github.com/meduz/scikit-learn@sparsenet
pip3 install -U scikit-image

# neuralensemble
brew install gsl
pip3 install -U neo
pip3 uninstall -y sumatra
pip3 install -U interval
pip3 install -U NeuroTools
pip3 install -U brian2
pip3 install -U brian2tools
pip3 install -U pynn
#pip install hg+https://bitbucket.org/apdavison/sumatra

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

brew linkapps
# Remove outdated versions from the cellar
brew cleanup
