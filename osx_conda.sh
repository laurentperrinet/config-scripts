conda install -y pip wheel setuptools setuptools-scm twine coverage pytest nose numexpr numpy lazyarray cython tables h5py pillow quantities pandas seaborn lmfit easydict statsmodels jedi nengo jedi psutil webassets markdown lxml "Nikola[extras]"  rst2html5 pyparsing python-dateutil matplotlib imagen dask holoviews bokeh pyzmq pygments tornado jsonschema terminado jinja2 jupyter jupyterlab ipython[all] version-information watermark jupyter_contrib_nbextensions jupyter_nbextensions_configurator nbtutor nbdime tqdm autopep8 plotly sphinx pyglet pygame pyOpenGL gloo pybtex svgwrite decorators imageio tqdm gizeh moviepy vapory vispy imageio pyprind mkl-devel onnx pyyaml sympy joblib scikit-learn scikit-image pytorch torchvision neo interval NeuroTools brian2  pynn

nikola plugin -i rest_html5
nikola plugin -i tx3_tag_cloud
jupyter contrib nbextension install --user
jupyter nbextensions_configurator enable --user
jupyter nbextension install --overwrite --py nbtutor
jupyter nbextension enable --py nbtutor
jupyter nbextension enable nbtutor --py
jupyter nbextension install https://github.com/kenkoooo/jupyter-autopep8/archive/master.zip --user\njupyter nbextension enable jupyter-autopep8-master/jupyter-autopep8
python3 -m pip install git+https://github.com/mkrphys/ipython-tikzmagic


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
