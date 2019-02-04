python3 -m pip uninstall -y torch
python3 -m pip uninstall -y torch
python3 -m pip install --user pyyaml

mkdir -p tmp
cd tmp

# git clone https://github.com/intel/mkl-dnn.git
# cd mkl-dnn
# cd scripts && ./prepare_mkl.sh && cd ..
# make
# make install
# cd ..


#git clone --recursive https://github.com/pytorch/pytorch
cd pytorch
#
git clean -f -d
git checkout
git pull
git submodule update --force --recursive --remote
git submodule update --recursive --remote
git pull

# NO_CUDA=True CC=clang CXX=clang++ python3 setup.py install
# NO_MKLDNN=True
#MACOSX_DEPLOYMENT_TARGET=10.9
MKL_INCLUDE_DIR=/usr/local/Cellar/mkl-dnn/0.17.2/ USE_OPENCL=True NO_CUDA=True CC=clang CXX=clang++ PYTHON_EXECUTABLE=/usr/local/bin/python3 python3 setup.py install
#python3 setup.py clean
cd ..

# git clone https://github.com/pytorch/vision.git
# cd vision
# python3 setup.py install
# cd ..

# python3 -m pip install --upgrade https://storage.googleapis.com/tensorflow/mac/cpu/tensorflow-1.12.0-py3-none-any.whl

# git clone https://github.com/lanpa/tensorboardX && cd tensorboardX && python setup.py install
# cd ..

cd ..
#rm -fr tmp
