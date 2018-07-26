#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
# sh osx_brew_bootstrap.sh

# 3. install python3 and friends
# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
# https://stackoverflow.com/questions/51125013/how-can-i-install-a-previous-version-of-python-3-in-macos-using-homebrew/51125014#51125014
brew install python
brew unlink python
brew install https://raw.githubusercontent.com/Homebrew/homebrew-core/f2a764ef944b1080be64bd88dca9a1d80130c558/Formula/python.rb
brew switch python 3.6.5_1
brew link python

brew uninstall python@2
brew uninstall --ignore-dependencies python@2

python3 -m ensurepip --upgrade # https://docs.python.org/3.7/library/ensurepip.html
python3 -m pip install -U pip wheel
python3 -m pip install -U setuptools setuptools-scm
python3 -m pip install -U twine

# testing
python3 -m pip install -U coverage
python3 -m pip install -U pytest
python3 -m pip install -U nose

# numpy
# sudo chown -R $(whoami):admin /usr/local
# brew tap homebrew/science
brew install suite-sparse
brew install gcc
brew install cmake
brew install fftw
brew install libtool
# python3 -m pip install -U numpy #--with-openblas
python3 -m pip install -U numexpr
#python3 -m pip install -U numpy
python3 -m pip install -U lazyarray
brew install numpy --without-python@2
python3 -m pip install -U cython
# ipython -c "import numpy; numpy.test() "
python3 -m pip install -U tables
python3 -m pip install -U h5py
python3 -m pip install -U pillow
python3 -m pip install -U quantities
python3 -m pip install -U pandas
python3 -m pip install -U seaborn
brew install hdf5
python3 -m pip install -U lmfit
python3 -m pip install -U easydict

# editing
# brew install vim --override-system-vi # --with-python3
# brew install macvim --env-std --override-system-vim --with-python3
# scipy et al
python3 -m pip install -U scipy --without-python@2
# python -c "import scipy; scipy.test() "
python3 -m pip install -U statsmodels
python3 -m pip install -U jedi
python3 -m pip install -U nengo

python3 -m pip install -U jedi

python3 -m pip install -U psutil
# pip install -U powerline-status
# sh ../libs/powerline-fonts/install.sh
# mac stuff
python3 -m pip install -U webassets
python3 -m pip install -U markdown
python3 -m pip install -U lxml
nikola plugin -i rest_html5
nikola plugin -i tx3_tag_cloud
python3 -m pip install -U "Nikola[extras]"
python3 -m pip install -U  rst2html5
# pylab
python3 -m pip install -U pyparsing
python3 -m pip install -U python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
python3 -m pip install -U matplotlib
# python -c "import pylab; pylab.test() "
python3 -m pip install -U imagen
python3 -m pip install -U dask
python3 -m pip install -U holoviews
python3 -m pip install -U bokeh

# editing environment
brew install zmq
python3 -m pip install -U pyzmq
python3 -m pip install -U pygments
python3 -m pip install -U tornado
python3 -m pip install -U jsonschema
python3 -m pip install -U terminado
# to use nbconvert with the ipython notebook, you need to install pandoce
brew cask install nteract
python3 -m pip install ipykernel
python3 -m ipykernel install --user
brew install pandoc
python3 -m pip install -U jinja2
python3 -m pip install -U jupyter
python3 -m pip install -U ipywidgets
jupyter nbextension install --user --py widgetsnbextension
jupyter nbextension enable --py  widgetsnbextension
python3 -m pip install -U jupyterlab
python3 -m pip install -U ipython[all]
python3 -m pip install -U version-information watermark
# python3 -m pip install -U https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master
python3 -m pip install -U jupyter_contrib_nbextensions
jupyter contrib nbextension install --user
python3 -m pip install -U jupyter_nbextensions_configurator
jupyter nbextensions_configurator enable --user
# python3 -m pip install -U nbtutor
# jupyter nbextension install --overwrite --py nbtutor
# jupyter nbextension enable --py nbtutor
# jupyter nbextension enable nbtutor --py
python3 -m pip install -U nbdime
nbdime extensions --enable
jupyter nbextension enable nbdime --py

python3 -m pip install -U tqdm
python3 -m pip install -U autopep8
jupyter nbextension install https://github.com/kenkoooo/jupyter-autopep8/archive/master.zip --user
jupyter nbextension enable jupyter-autopep8-master/jupyter-autopep8
python3 -m pip install -U plotly
python3 -m pip install git+https://github.com/mkrphys/ipython-tikzmagic

#
brew install sip --without-python@2
brew install pyqt --without-python@2
python3 -m pip install -U sphinx

# pygame
# brew install --HEAD smpeg
#brew uninstall sdl2 sdl2_image sdl2_mixer sdl2_ttf  sdl2_gfx sdl2_net
#brew install sdl sdl_image sdl_mixer sdl_ttf  sdl_gfx sdl_net

# pyglet
python3 -m pip install -U pyglet
python3 -m pip install -U pygame
python3 -m pip install -U pyOpenGL
python3 -m pip install -U gloo

# 1. install HomeBrew + python
# sh osx_brew_python.sh

# install scientific packages
brew install libyaml
python3 -m pip install -U pybtex
#brew install --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2

# video utilities
python3 -m pip install -U svgwrite
brew install x264
brew install ffmpeg --with-libvorbis --with-libvpx
python3 -m pip install -U decorators
python3 -m pip install -U imageio
python3 -m pip install -U tqdm
#python3 -m pip install -U git+https://github.com/meduz/moviepy@moviepy3
python3 -m pip install -U gizeh
# python3 -m pip install -U moviepy
# python3 -m pip install -U https://github.com/Zulko/moviepy
python3 -m pip install -U moviepy
brew install povray
python3 -m pip install -U vapory
# python3 -m pip install -U git+https://github.com/vispy/vispy.git
python3 -m pip install -U vispy
python3 -m pip install -U imageio
python3 -m pip install -U pyprind

# science
# brew tap homebrew/science
brew install mkl-dnn
python3 -m pip install -U mkl-devel
python3 -m pip install -U onnx
python3 -m pip install -U pyyaml
brew install protobuf --without-python@2 --with-python
# brew install tbb
# mathematics
python3 -m pip install -U sympy
#machine learning
python3 -m pip install -U joblib
# python3 -m pip install -U git+https://github.com/meduz/scikit-learn@sparsenet
python3 -m pip install -U scikit-learn
# python3 -m pip install -U git+https://github.com/scikit-learn/scikit-learn
python3 -m pip install -U scikit-image
# BICV
# python3 -m pip install -U git+https://github.com/bicv/SLIP
# python3 -m pip install -U git+https://github.com/bicv/LogGabor
# python3 -m pip install -U git+https://github.com/bicv/SparseEdges
# python3 -m pip install -U SparseEdges
# deep learning
# python3 -m pip install -U tensorflow
python3 -m pip uninstall -y tensorflow
python3 -m pip uninstall -y tensorboard
# python3 -m pip install -U torch
python3 -m pip install -U torchvision
# python3 -m pip install -U torchvision-enhance
#python3 -m pip install -U

#python3 -m pip install -U python-pygaze
#python3 -m pip install git+https://github.com/esdalmaijer/PyGazeAnalyser

# neuralensemble
brew install gsl
python3 -m pip install -U neo
python3 -m pip install -U interval
python3 -m pip install -U NeuroTools
python3 -m pip install -U brian2
python3 -m pip install -U brian2tools
python3 -m pip install -U pynn

# latex, bibliography and friends
# sh osx_install_tex_live.sh
brew install bib-tool

# brew install python
# pyenv global homebrew
# pyenv rehash

# pip2 install -U pip setuptools
# python2 -m pip install ipykernel
# python2 -m ipykernel install --user
# pip2 install beets
# pip2 install flask
# pip2 install pylast
# pip2 install discogs_client
# brew install chromaprint
# pip2 install  pyacoustid
# brew install wxpython
# pip2 install -U configobj
# python3 -m pip install -U git+https://github.com/psychopy/psychopy
# python3 -m pip install -U psychopy

# Remove outdated versions from the cellar
brew cleanup
