# pupil https://docs.pupil-labs.com/#macos-dependencies
brew install librealsense
brew tap homebrew/python
brew install pkg-config
brew install numpy
brew install scipy
brew install libjpeg-turbo
brew install libusb
brew tap homebrew/science
brew install ffmpeg
brew install opencv3 --with-contrib --with-python3 --with-tbb --without-python --with-ffmpeg
brew install glew
brew tap homebrew/versions
brew install glfw3
# dependencies for 2d_3d c++ detector
brew install boost
brew install boost-python --with-python3
brew install ceres-solver

pip3 install -U msgpack_python
pip3 install git+https://github.com/zeromq/pyre
pip3 install git+https://github.com/pupil-labs/PyAV
pip3 install git+https://github.com/pupil-labs/pyuvc
pip3 install git+https://github.com/pupil-labs/pyndsi
pip3 install git+https://github.com/pupil-labs/pyglui


