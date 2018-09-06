python3 -m pip uninstall -y torch
python3 -m pip uninstall -y torch
# pip uninstall -y torch
#pip install torch 
cd ../..
cd ../..
cd tmp
rm -fr pytorch
git clone --recursive https://github.com/pytorch/pytorch
cd pytorch

# git clean -f -d
# git checkout
# git pull
# git submodule update --force --recursive --remote
#git submodule update --recursive --remote
# git pull
python3 -m pip install --user pyyaml
#MACOSX_DEPLOYMENT_TARGET=10.9 NO_CUDA=True CC=clang CXX=clang++ python3 setup.py install
# MKL_INCLUDE_DIR=/usr/local/Cellar/mkl-dnn/0.14/
# NO_MKLDNN=True
USE_OPENCL=True NO_CUDA=True CC=clang CXX=clang++ PYTHON_EXECUTABLE=/usr/local/bin/python3 python3 setup.py install
#python3 setup.py clean
cd ..
rm -fr pytorch
cd ../nextcloud/libs
cd config/config-scripts
