pip3 uninstall -y torch
pip3 uninstall -y torch
pip3 uninstall -y torch
cd ../../pytorch
git clean -f -d 
git checkout
git pull
NO_CUDA=True CC=clang CXX=clang++ python3 setup.py install
python3 setup.py clean
cd ../config/config-scripts
