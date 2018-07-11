#!/bin/bash
# 1. install Xcode:
# From this url : http://itunes.apple.com/us/app/xcode/id497799835?mt=12 install Xcode on the Mac App Store by clicking on “View in Mac App Store”.

# 2. install HomeBrew
# It is recommend to run the bootstrap_brew.sh script to obtain core packages
# sh osx_brew_bootstrap.sh

# 3. install python3 and friends
# https://github.com/mxcl/homebrew/wiki/Homebrew-and-Python
# brew install --universal python
# brew uninstall --ignore-dependencies python@2

#python3 -m ensurepip --upgrade # https://docs.python.org/3.7/library/ensurepip.html
conda install -y pip wheel
conda install -y setuptools setuptools-scm
conda install -y twine

# testing
conda install -y coverage
conda install -y pytest
conda install -y nose

# numpy
# sudo chown -R $(whoami):admin /usr/local
# # brew tap homebrew/science
# brew install suite-sparse
# brew install gcc
# brew install cmake
# brew install fftw
# brew install libtool
# conda install -y numpy #--with-openblas
conda install -y numexpr
#conda install -y numpy
conda install -y lazyarray
# brew uninstall numpy
# brew install numpy --without-python@2
conda install -y cython
# ipython -c "import numpy; numpy.test() "
conda install -y tables
conda install -y h5py
conda install -y pillow
conda install -y quantities
conda install -y pandas
conda install -y seaborn
# brew install hdf5
conda install -y lmfit
conda install -y easydict

# editing
# # brew install vim --override-system-vi # --with-python3
# # brew install macvim --env-std --override-system-vim --with-python3
# scipy et al
# brew uninstall scipy
# brew install scipy --without-python@2
# python -c "import scipy; scipy.test() "
conda install -y statsmodels
conda install -y jedi
conda install -y nengo

conda install -y jedi

conda install -y psutil
# pip install -U powerline-status
# sh ../libs/powerline-fonts/install.sh
# mac stuff
conda install -y webassets
conda install -y markdown
conda install -y lxml
nikola plugin -i rest_html5
nikola plugin -i tx3_tag_cloud
conda install -y "Nikola[extras]"
conda install -y  rst2html5
# pylab
conda install -y pyparsing
conda install -y python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
conda install -y matplotlib
# python -c "import pylab; pylab.test() "
conda install -y imagen
conda install -y dask
conda install -y holoviews
conda install -y bokeh

# editing environment
# brew install zmq
conda install -y pyzmq
conda install -y pygments
conda install -y tornado
conda install -y jsonschema
conda install -y terminado
# to use nbconvert with the ipython notebook, you need to install pandoce
# brew cask install nteract
python3 -m pip install ipykernel
python3 -m ipykernel install --user
# brew install pandoc
conda install -y jinja2
conda install -y jupyter
conda install -y jupyterlab
conda install -y ipython[all]
conda install -y version-information watermark
# conda install -y https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master
conda install -y jupyter_contrib_nbextensions
conda install -y jupyter_nbextensions_configurator
jupyter contrib nbextension install --user
jupyter nbextensions_configurator enable --user
conda install -y nbtutor
jupyter nbextension install --overwrite --py nbtutor
jupyter nbextension enable --py nbtutor
jupyter nbextension enable nbtutor --py
conda install -y nbdime

conda install -y tqdm
conda install -y autopep8
jupyter nbextension install https://github.com/kenkoooo/jupyter-autopep8/archive/master.zip --user\njupyter nbextension enable jupyter-autopep8-master/jupyter-autopep8
conda install -y plotly
python3 -m pip install git+https://github.com/mkrphys/ipython-tikzmagic

# brew uninstall --ignore-dependencies sip
# brew install sip --without-python@2
# brew uninstall --ignore-dependencies pyqt
# brew install pyqt --without-python@2
conda install -y sphinx

# pygame
# # brew install --HEAD smpeg
## brew uninstall sdl2 sdl2_image sdl2_mixer sdl2_ttf  sdl2_gfx sdl2_net
## brew install sdl sdl_image sdl_mixer sdl_ttf  sdl_gfx sdl_net

# pyglet
conda install -y pyglet
conda install -y pygame
conda install -y pyOpenGL
conda install -y gloo

# 1. install Home# brew + python
# sh osx_brew_python.sh

# install scientific packages
# brew install libyaml
conda install -y pybtex
## brew install --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2

# video utilities
conda install -y svgwrite
# brew install x264
# brew install ffmpeg --with-libvorbis --with-libvpx
conda install -y decorators
conda install -y imageio
conda install -y tqdm
#conda install -y git+https://github.com/meduz/moviepy@moviepy3
conda install -y gizeh
# conda install -y moviepy
# conda install -y https://github.com/Zulko/moviepy
conda install -y moviepy
# brew install povray
conda install -y vapory
# conda install -y git+https://github.com/vispy/vispy.git
conda install -y vispy
conda install -y imageio
conda install -y pyprind

# science
# # brew tap homebrew/science
# brew install mkl-dnn
conda install -y mkl-devel
conda install -y onnx
conda install -y pyyaml
# brew install protobuf --without-python@2 --with-python
# brew uninstall tbb

# mathematics
conda install -y sympy
#machine learning
conda install -y joblib
# conda install -y git+https://github.com/meduz/scikit-learn@sparsenet
conda install -y scikit-learn
# conda install -y git+https://github.com/scikit-learn/scikit-learn
conda install -y scikit-image
# BICV
# conda install -y git+https://github.com/bicv/SLIP
# conda install -y git+https://github.com/bicv/LogGabor
# conda install -y git+https://github.com/bicv/SparseEdges
# conda install -y SparseEdges
# deep learning
# conda install -y tensorflow
#pip3 uninstall -y tensorflow
#pip3 uninstall -y tensorboard
conda install -y torch
conda install -y torchvision-enhance
#python3 -m pip install -U

#conda install -y python-pygaze
#python3 -m pip install git+https://github.com/esdalmaijer/PyGazeAnalyser

# neuralensemble
# brew install gsl
conda install -y neo
conda install -y interval
conda install -y NeuroTools
conda install -y brian2
conda install -y brian2tools
conda install -y pynn

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
# conda install -y git+https://github.com/psychopy/psychopy
# conda install -y psychopy

# Remove outdated versions from the cellar
# brew cleanup
