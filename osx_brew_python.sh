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
python3 -m pip install -U --force pip wheel
python3 -m pip install -U --force setuptools setuptools-scm
python3 -m pip install -U --force twine

# testing
python3 -m pip install -U --force coverage
python3 -m pip install -U --force pytest
python3 -m pip install -U --force nose

# numpy
# sudo chown -R $(whoami):admin /usr/local
# brew tap homebrew/science
brew install suite-sparse
brew install gcc
brew install cmake
brew install fftw
brew install libtool
# python3 -m pip install -U --force numpy #--with-openblas
python3 -m pip install -U --force numexpr
#python3 -m pip install -U --force numpy
python3 -m pip install -U --force lazyarray
brew uninstall numpy
brew install numpy --without-python@2
python3 -m pip install -U --force cython
# ipython -c "import numpy; numpy.test() "
python3 -m pip install -U --force tables
python3 -m pip install -U --force h5py
python3 -m pip install -U --force pillow
python3 -m pip install -U --force quantities
python3 -m pip install -U --force pandas
python3 -m pip install -U --force seaborn
brew install hdf5
python3 -m pip install -U --force lmfit
python3 -m pip install -U --force easydict

# editing
# brew install vim --override-system-vi # --with-python3
# brew install macvim --env-std --override-system-vim --with-python3
# scipy et al
brew uninstall scipy
brew install scipy --without-python@2
# python -c "import scipy; scipy.test() "
python3 -m pip install -U --force statsmodels
python3 -m pip install -U --force jedi
python3 -m pip install -U --force nengo

python3 -m pip install -U --force jedi

python3 -m pip install -U --force psutil
# pip install -U powerline-status
# sh ../libs/powerline-fonts/install.sh
# mac stuff
python3 -m pip install -U --force webassets
python3 -m pip install -U --force markdown
python3 -m pip install -U --force lxml
nikola plugin -i rest_html5
nikola plugin -i tx3_tag_cloud
python3 -m pip install -U --force "Nikola[extras]"
python3 -m pip install -U --force  rst2html5
# pylab
python3 -m pip install -U --force pyparsing
python3 -m pip install -U --force python-dateutil
# pip install git+git://github.com/matplotlib/matplotlib.git
python3 -m pip install -U --force matplotlib
# python -c "import pylab; pylab.test() "
python3 -m pip install -U --force imagen
python3 -m pip install -U --force dask
python3 -m pip install -U --force holoviews
python3 -m pip install -U --force bokeh

# editing environment
brew install zmq
python3 -m pip install -U --force pyzmq
python3 -m pip install -U --force pygments
python3 -m pip install -U --force tornado
python3 -m pip install -U --force jsonschema
python3 -m pip install -U --force terminado
# to use nbconvert with the ipython notebook, you need to install pandoce
brew cask install nteract
python3 -m pip install ipykernel
python3 -m ipykernel install --user
brew install pandoc
python3 -m pip install -U --force jinja2
python3 -m pip install -U --force jupyter
python3 -m pip install -U --force jupyterlab
python3 -m pip install -U --force ipython[all]
python3 -m pip install -U --force version-information watermark
# python3 -m pip install -U --force https://github.com/ipython-contrib/jupyter_contrib_nbextensions/tarball/master
python3 -m pip install -U --force jupyter_contrib_nbextensions
python3 -m pip install -U --force jupyter_nbextensions_configurator
jupyter contrib nbextension install --user
jupyter nbextensions_configurator enable --user
python3 -m pip install -U --force nbtutor
jupyter nbextension install --overwrite --py nbtutor
jupyter nbextension enable --py nbtutor
jupyter nbextension enable nbtutor --py
python3 -m pip install -U --force nbdime

python3 -m pip install -U --force tqdm
python3 -m pip install -U --force autopep8
jupyter nbextension install https://github.com/kenkoooo/jupyter-autopep8/archive/master.zip --user\njupyter nbextension enable jupyter-autopep8-master/jupyter-autopep8
python3 -m pip install -U --force plotly
python3 -m pip install git+https://github.com/mkrphys/ipython-tikzmagic

brew uninstall --ignore-dependencies sip
brew install sip --without-python@2
brew uninstall --ignore-dependencies pyqt
brew install pyqt --without-python@2
python3 -m pip install -U --force sphinx

# pygame
# brew install --HEAD smpeg
#brew uninstall sdl2 sdl2_image sdl2_mixer sdl2_ttf  sdl2_gfx sdl2_net
#brew install sdl sdl_image sdl_mixer sdl_ttf  sdl_gfx sdl_net

# pyglet
python3 -m pip install -U --force pyglet
python3 -m pip install -U --force pygame
python3 -m pip install -U --force pyOpenGL
python3 -m pip install -U --force gloo

# 1. install HomeBrew + python
# sh osx_brew_python.sh

# install scientific packages
brew install libyaml
python3 -m pip install -U --force pybtex
#brew install --with-openblas --with-valgrind r
#sudo ln -s "/usr/local/opt/r/R.framework" /Library/Frameworks
#pip install -U rpy2

# video utilities
python3 -m pip install -U --force svgwrite
brew install x264
brew install ffmpeg --with-libvorbis --with-libvpx
python3 -m pip install -U --force decorators
python3 -m pip install -U --force imageio
python3 -m pip install -U --force tqdm
#python3 -m pip install -U --force git+https://github.com/meduz/moviepy@moviepy3
python3 -m pip install -U --force gizeh
# python3 -m pip install -U --force moviepy
# python3 -m pip install -U --force https://github.com/Zulko/moviepy
python3 -m pip install -U --force moviepy
brew install povray
python3 -m pip install -U --force vapory
# python3 -m pip install -U --force git+https://github.com/vispy/vispy.git
python3 -m pip install -U --force vispy
python3 -m pip install -U --force imageio
python3 -m pip install -U --force pyprind

# science
# brew tap homebrew/science
brew install mkl-dnn
python3 -m pip install -U --force mkl-devel
python3 -m pip install -U --force onnx
python3 -m pip install -U --force pyyaml
brew install protobuf --without-python@2 --with-python
brew uninstall tbb

# mathematics
python3 -m pip install -U --force sympy
#machine learning
python3 -m pip install -U --force joblib
# python3 -m pip install -U --force git+https://github.com/meduz/scikit-learn@sparsenet
python3 -m pip install -U --force scikit-learn
# python3 -m pip install -U --force git+https://github.com/scikit-learn/scikit-learn
python3 -m pip install -U --force scikit-image
# BICV
# python3 -m pip install -U --force git+https://github.com/bicv/SLIP
# python3 -m pip install -U --force git+https://github.com/bicv/LogGabor
# python3 -m pip install -U --force git+https://github.com/bicv/SparseEdges
# python3 -m pip install -U --force SparseEdges
# deep learning
# python3 -m pip install -U --force tensorflow
pip3 uninstall -y tensorflow
pip3 uninstall -y tensorboard
python3 -m pip install -U --force torch
python3 -m pip install -U --force torchvision-enhance
#python3 -m pip install -U

#python3 -m pip install -U --force python-pygaze
#python3 -m pip install git+https://github.com/esdalmaijer/PyGazeAnalyser

# neuralensemble
brew install gsl
python3 -m pip install -U --force neo
python3 -m pip install -U --force interval
python3 -m pip install -U --force NeuroTools
python3 -m pip install -U --force brian2
python3 -m pip install -U --force brian2tools
python3 -m pip install -U --force pynn

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
# python3 -m pip install -U --force git+https://github.com/psychopy/psychopy
# python3 -m pip install -U --force psychopy

# Remove outdated versions from the cellar
brew cleanup
