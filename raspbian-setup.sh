#!/bin/bash

echo "-------------------------------------------------------"
echo "updating and upgrading"
echo "-------------------------------------------------------"
sudo apt-get update -y && sudo apt-get upgrade -y

echo "-------------------------------------------------------"
echo "installing utilities"
echo "-------------------------------------------------------"
sudo apt-get install -y avahi-daemon git mc zsh file-roller screen tmux dialog cifs-utils usbmount tightvncserver nodejs wget curl zip rsync hfsplus

echo "-------------------------------------------------------"
echo "starting vncserver"
echo "-------------------------------------------------------"
# vncserver :1

# Tested on a Raspberry Pi 3 running Raspbian Jessie Lite (2016-05-27,, kernel 4.4)
# – http://computers.tutsplus.com/tutorials/using-a-raspberry-pi-as-an-airplay-receiver--mac-54316

# install dependencies
#sudo apt-get install build-essential libssl-dev libcrypt-openssl-rsa-perl libio-socket-inet6-perl libwww-perl libmodule-build-perl libasound2-dev libao-dev pulseaudio libpulse-dev avahi-utils libavahi-client-dev

# configure and build
#git clone https://github.com/abrasive/shairport.git
#cd shairport
#./configure
#make

# launch
#./shairport -a "Raspberry Pi"

# connect from your mac (system preferences > audio > output)

# set up network connection (e.g. using wpa_cli)
# wpa_cli

sudo apt-get -y install python3-dev python3-tk 
#sudo apt-get -y install python3-imaging-tk ## the packet has been renamed or removed
sudo apt-get -y install ipython3 ipython3-notebook ipython3-qtconsole

pip3 install jupyter ipykernel


# ipython3 kernelspec install-self
# ipython3 kernel install
# python3 -m pip install ipykernel
# python3 -m ipykernel install --user
#ipython profile create nbserver
jupyter notebook --generate-config
ipython3 -c'from notebook.auth import passwd; passwd()'
cp jupyter_notebook_config.py /home/pi/.jupyter/jupyter_notebook_config.py
sudo apt-get -y install python3-matplotlib python3-scipy \
  python3-pandas python3-nose

# impossible to find the following package : python3-sympy

# remove mathematica
sudo apt-get remove wolfram-engine
sudo rm /usr/share/raspi-ui-overrides/applications/wolfram-language.desktop /usr/share/raspi-ui-overrides/applications/wolfram-mathematica.desktop

echo "-------------------------------------------------------"
echo "Installation of openretina dependencies"
echo "-------------------------------------------------------"
sudo pip3 install pyzmq
## opencv
sudo apt-get -y install build-essential cmake pkg-config
sudo apt-get -y install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
sudo apt-get -y install libxvidcore-dev libx264-dev
sudo apt-get -y install libgtk2.0-dev
sudo apt-get -y install libatlas-base-dev gfortran
sudo apt-get -y install python2.7-dev python3-dev

cd ~
wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.1.0.zip
unzip opencv.zip

wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.1.0.zip
unzip opencv_contrib.zip

cd ~/opencv-3.1.0/
mkdir build
cd build
cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.1.0/modules -D BUILD_EXAMPLES=ON ..
make -j4

sudo make install
sudo ldconfig

sudo chmod a+rw /dev/vchiq # to allow the current user to acces video ressources

echo "-------------------------------------------------------"
echo "reboot when ready"
echo "-------------------------------------------------------"