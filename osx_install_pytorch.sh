pip3 uninstall -y torch torchvision
# pip3 uninstall -y torch torchvision
# pip3 uninstall -y torch torchvision
#pip3 install torch torchvision

cd ../..
rm -fr pytorch
git clone --recursive https://github.com/pytorch/pytorch
cd pytorch

# git clean -f -d
# git checkout
# git pull
# git submodule update --force --recursive --remote
#git submodule update --recursive --remote
# git pull

#MACOSX_DEPLOYMENT_TARGET=10.9 NO_CUDA=True CC=clang CXX=clang++ python3 setup.py install
# MKL_INCLUDE_DIR=/usr/local/Cellar/mkl-dnn/0.14/
# NO_MKLDNN=True
NO_CUDA=True CC=clang CXX=clang++ python3 setup.py install
#python3 setup.py clean
cd ../..
rm -fr pytorch
cd config/config-scripts
