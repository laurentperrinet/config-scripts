#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
# sh osx_brew_bootstrap.sh

# 3. install python3 and friends
# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
brew install --universal python
brew uninstall --ignore-dependencies python@2

python3 -m ensurepip --upgrade # https://docs.python.org/3.7/library/ensurepip.html
python3 -m pip install pip wheel
python3 -m pip uninstall -y setuptools setuptools-scm
python3 -m pip uninstall -y twine

# testing
python3 -m pip uninstall -y coverage
python3 -m pip uninstall -y pytest
python3 -m pip uninstall -y nose

# numpy
# sudo chown -R $(whoami):admin /usr/local
# brew tap homebrew/science
# brew install suite-sparse
# brew install gcc
# brew install cmake
# brew install fftw
# brew install libtool
# python3 -m pip uninstall -y numpy #--with-openblas
python3 -m pip uninstall -y numexpr
#python3 -m pip uninstall -y numpy
python3 -m pip uninstall -y lazyarray
brew uninstall numpy
# brew install numpy --without-python@2
python3 -m pip uninstall -y cython
# ipython -c "import numpy; numpy.test() "
python3 -m pip uninstall -y tables
python3 -m pip uninstall -y h5py
python3 -m pip uninstall -y pillow
python3 -m pip uninstall -y quantities
python3 -m pip uninstall -y pandas
python3 -m pip uninstall -y seaborn
# brew install hdf5
python3 -m pip uninstall -y lmfit
python3 -m pip uninstall -y easydict

# editing
# # brew install vim --override-system-vi # --with-python3
# # brew install macvim --env-std --override-system-vim --with-python3
# scipy et al
brew uninstall scipy
# brew install scipy --without-python@2
# python -c "import scipy; scipy.test() "
python3 -m pip uninstall -y statsmodels
python3 -m pip uninstall -y jedi
python3 -m pip uninstall -y nengo

python3 -m pip uninstall -y jedi

python3 -m pip uninstall -y psutil
# pip install -U powerline-status
# sh ../libs/powerline-fonts/install.sh
# mac stuff
python3 -m pip uninstall -y webassets
python3 -m pip uninstall -y markdown
python3 -m pip uninstall -y lxml
# nikola plugin -i rest_html5
# nikola plugin -i tx3_tag_cloud
python3 -m pip uninstall -y "Nikola[extras]"
python3 -m pip uninstall -y  rst2html5
# pylab
python3 -m pip uninstall -y pyparsing
python3 -m pip uninstall -y python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
python3 -m pip uninstall -y matplotlib
# python -c "import pylab; pylab.test() "
python3 -m pip uninstall -y imagen
python3 -m pip uninstall -y dask
python3 -m pip uninstall -y holoviews
python3 -m pip uninstall -y bokeh

# editing environment
# brew install zmq
python3 -m pip uninstall -y pyzmq
python3 -m pip uninstall -y pygments
python3 -m pip uninstall -y tornado
python3 -m pip uninstall -y jsonschema
python3 -m pip uninstall -y terminado
# to use nbconvert with the ipython notebook, you need to install pandoce
brew cask install nteract
python3 -m pip install ipykernel
python3 -m ipykernel install --user
# brew install pandoc
python3 -m pip uninstall -y jinja2
python3 -m pip uninstall -y jupyter
python3 -m pip uninstall -y jupyterlab
python3 -m pip uninstall -y ipython[all]
python3 -m pip uninstall -y version-information watermark
# python3 -m pip uninstall -y https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master
python3 -m pip uninstall -y jupyter_contrib_nbextensions
python3 -m pip uninstall -y jupyter_nbextensions_configurator
jupyter contrib nbextension install --user
jupyter nbextensions_configurator enable --user
python3 -m pip uninstall -y nbtutor
# jupyter nbextension install --overwrite --py nbtutor
# jupyter nbextension enable --py nbtutor
# jupyter nbextension enable nbtutor --py
python3 -m pip uninstall -y nbdime

python3 -m pip uninstall -y tqdm
python3 -m pip uninstall -y autopep8
# jupyter nbextension install https://github.com/kenkoooo/jupyter-autopep8/archive/master.zip --user\n# jupyter nbextension enable jupyter-autopep8-master/jupyter-autopep8
python3 -m pip uninstall -y plotly
python3 -m pip install git+https://github.com/mkrphys/ipython-tikzmagic

brew uninstall --ignore-dependencies sip
# brew install sip --without-python@2
brew uninstall --ignore-dependencies pyqt
# brew install pyqt --without-python@2
python3 -m pip uninstall -y sphinx

# pygame
# # brew install --HEAD smpeg
#brew uninstall sdl2 sdl2_image sdl2_mixer sdl2_ttf  sdl2_gfx sdl2_net
## brew install sdl sdl_image sdl_mixer sdl_ttf  sdl_gfx sdl_net

# pyglet
python3 -m pip uninstall -y pyglet
python3 -m pip uninstall -y pygame
python3 -m pip uninstall -y pyOpenGL
python3 -m pip uninstall -y gloo

# 1. install HomeBrew + python
# sh osx_brew_python.sh

# install scientific packages
# brew install libyaml
python3 -m pip uninstall -y pybtex
## brew install --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2

# video utilities
python3 -m pip uninstall -y svgwrite
# brew install x264
# brew install ffmpeg --with-libvorbis --with-libvpx
python3 -m pip uninstall -y decorators
python3 -m pip uninstall -y imageio
python3 -m pip uninstall -y tqdm
#python3 -m pip uninstall -y git+https://github.com/meduz/moviepy@moviepy3
python3 -m pip uninstall -y gizeh
# python3 -m pip uninstall -y moviepy
# python3 -m pip uninstall -y https://github.com/Zulko/moviepy
python3 -m pip uninstall -y moviepy
# brew install povray
python3 -m pip uninstall -y vapory
# python3 -m pip uninstall -y git+https://github.com/vispy/vispy.git
python3 -m pip uninstall -y vispy
python3 -m pip uninstall -y imageio
python3 -m pip uninstall -y pyprind

# science
# brew tap homebrew/science
# brew install mkl-dnn
python3 -m pip uninstall -y mkl-devel
python3 -m pip uninstall -y onnx
python3 -m pip uninstall -y pyyaml
# brew install protobuf --without-python@2 --with-python
brew uninstall tbb

# mathematics
python3 -m pip uninstall -y sympy
#machine learning
python3 -m pip uninstall -y joblib
# python3 -m pip uninstall -y git+https://github.com/meduz/scikit-learn@sparsenet
python3 -m pip uninstall -y scikit-learn
# python3 -m pip uninstall -y git+https://github.com/scikit-learn/scikit-learn
python3 -m pip uninstall -y scikit-image
# BICV
# python3 -m pip uninstall -y git+https://github.com/bicv/SLIP
# python3 -m pip uninstall -y git+https://github.com/bicv/LogGabor
# python3 -m pip uninstall -y git+https://github.com/bicv/SparseEdges
# python3 -m pip uninstall -y SparseEdges
# deep learning
# python3 -m pip uninstall -y tensorflow
pip3 uninstall -y tensorflow
pip3 uninstall -y tensorboard
python3 -m pip uninstall -y torch
python3 -m pip uninstall -y torchvision-enhance
#python3 -m pip install -U

#python3 -m pip uninstall -y python-pygaze
#python3 -m pip install git+https://github.com/esdalmaijer/PyGazeAnalyser

# neuralensemble
# brew install gsl
python3 -m pip uninstall -y neo
python3 -m pip uninstall -y interval
python3 -m pip uninstall -y NeuroTools
python3 -m pip uninstall -y brian2
python3 -m pip uninstall -y brian2tools
python3 -m pip uninstall -y pynn

# latex, bibliography and friends
# sh osx_install_tex_live.sh
# brew install bib-tool

# # brew install python
# pyenv global homebrew
# pyenv rehash

# pip2 install -U pip setuptools
# python2 -m pip install ipykernel
# python2 -m ipykernel install --user
# pip2 install beets
# pip2 install flask
# pip2 install pylast
# pip2 install discogs_client
# # brew install chromaprint
# pip2 install  pyacoustid
# # brew install wxpython
# pip2 install -U configobj
# python3 -m pip uninstall -y git+https://github.com/psychopy/psychopy
# python3 -m pip uninstall -y psychopy

python3 -m pip uninstall -y pip wheel

brew uninstall matplotlib certbot numpy opencv protobuf py3cairo pyqt scipy sip thefuck vim python

# Remove outdated versions from the cellar
brew cleanup
