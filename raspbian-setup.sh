# use bash -c "$(curl -fsSL https://raw.githubusercontent.com/laurentperrinet/config-scripts/master/raspbian-setup.sh)"

echo "-------------------------------------------------------"
echo "updating and upgrading"
echo "-------------------------------------------------------"
sudo apt-get update -y && sudo apt-get upgrade -y
sudo apt-get install apt-transport-https

echo "-------------------------------------------------------"
echo "installing utilities"
echo "-------------------------------------------------------"
sudo apt-get install -y git wget curl zip rsync vim aptitude
# sudo apt-get install -y avahi-daemon mc zsh file-roller screen tmux dialog cifs-utils usbmount tightvncserver nodejs hfsplus

#echo "-------------------------------------------------------"
#echo "starting vncserver"
#echo "-------------------------------------------------------"
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

echo "-------------------------------------------------------"
echo " python 3"
echo "-------------------------------------------------------"


## SEE https://github.com/kleinee/jns
# script name:     install_python.sh
# last modified:   2017/03/22
# sudo:            yes
#
# see: http://sowingseasons.com/blog/building-python-3-4-on-raspberry-pi-2.html


#------------------------------------------------------
sudo apt-get install -y build-essential libncursesw5-dev
sudo apt-get install -y libgdbm-dev libc6-dev
sudo apt-get install -y zlib1g-dev libsqlite3-dev tk-dev
sudo apt-get install -y libssl-dev openssl
sudo apt-get install -y libreadline-dev libbz2-dev
#------------------------------------------------------
#Python 3 version to install
#version="3.6.1"

#wget "https://www.python.org/ftp/python/$version/Python-$version.tgz"
#tar zxvf "Python-$version.tgz"
#cd "Python-$version"
#./configure
#make
#sudo make install

sudo apt-get -y install python3-dev python3-tk
#sudo apt-get -y install python3-imaging-tk ## the packet has been renamed or removed
sudo apt-get -y install ipython3 ipython3-notebook ipython3-qtconsole


sudo pip3 install pip --upgrade

# clean up

cd ..

rm -rf "./Python-$version"
rm "./Python-$version.tgz"

sudo pip3 install  ipykernel


# ipython3 kernelspec install-self
# ipython3 kernel install
# python3 -m pip install ipykernel
# python3 -m ipykernel install --user
#ipython profile create nbserver
jupyter notebook --generate-config
ipython3 -c'from notebook.auth import passwd; passwd()'
mv jupyter_notebook_config.py /home/pi/.jupyter/jupyter_notebook_config.py

sudo pip3 install jupyter

#------------------------------------------------------
sudo apt-get -y install libncurses5-dev
sudo apt-get -y install python-dev
#------------------------------------------------------

sudo pip3 install readline
sudo pip3 install ipyparallel


sudo pip3 install jupyterlab
sudo jupyter serverextension enable --py jupyterlab --sys-prefix

# impossible to find the following package : python3-sympy

# remove mathematica
#sudo apt-get remove wolfram-engine
#sudo rm /usr/share/raspi-ui-overrides/applications/wolfram-language.desktop /usr/share/raspi-ui-overrides/applications/wolfram-mathematica.desktop


sudo apt-get -y install libblas-dev liblapack-dev
sudo apt-get -y install libatlas-base-dev gfortran

sudo apt-get -y install python3-matplotlib python3-scipy \
  python3-pandas python3-nose

echo "-------------------------------------------------------"
echo "Installation of openretina dependencies"
echo "-------------------------------------------------------"
sudo apt-get install -y install python3-zmq

sudo apt-get install -y python3-picamera
sudo pip3 install moviepy
## opencv
sudo apt-get -y install build-essential cmake pkg-config libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev libavcodec-dev libavformat-dev libswscale-dev libv4l-dev libxvidcore-dev libx264-dev libgtk2.0-dev libatlas-base-dev gfortran python2.7-dev python3-dev
#sudo apt-get -y install libjpeg-dev libtiff5-dev libjasper-dev libpng12-dev
#sudo apt-get -y install libavcodec-dev libavformat-dev libswscale-dev libv4l-dev
#sudo apt-get -y install libxvidcore-dev libx264-dev libgtk2.0-dev libatlas-base-dev gfortran python2.7-dev python3-dev
#sudo apt-get -y install libgtk2.0-dev libatlas-base-dev gfortran python2.7-dev python3-dev
#sudo apt-get -y install libatlas-base-dev gfortran
#sudo apt-get -y install python2.7-dev python3-dev

#cd ~
#wget -O opencv.zip https://github.com/Itseez/opencv/archive/3.1.0.zip

#unzip opencv.zip

#wget -O opencv_contrib.zip https://github.com/Itseez/opencv_contrib/archive/3.1.0.zip
#unzip opencv_contrib.zip

#cd ~/opencv-3.1.0/
#mkdir build
#cd build
#cmake -D CMAKE_BUILD_TYPE=RELEASE -D CMAKE_INSTALL_PREFIX=/usr/local -D INSTALL_PYTHON_EXAMPLES=ON -D OPENCV_EXTRA_MODULES_PATH=~/opencv_contrib-3.1.0/modules -D BUILD_EXAMPLES=ON ..
#make -j4#

#sudo make install
#sudo ldconfig

#sudo chmod a+rw /dev/vchiq # to allow the current user to acces video ressources


echo "-------------------------------------------------------"
echo " LaTeX "
echo "-------------------------------------------------------"

sudo apt-get install -y texlive
sudo apt-get install -y texlive-latex-extra
sudo apt-get install -y dvipng pandoc
sudo apt-get install -y texlive-xetex


echo "-------------------------------------------------------"
echo " git repositories "
echo "-------------------------------------------------------"

pip3 install -U git+https://github.com/NeuralEnsemble/NeuroTools.git
pip3 install -U git+https://github.com/bicv/SLIP.git
cd
git clone https://github.com/laurentperrinet/openRetina
cd openRetina
pip3 install -e .
cd ..

echo "-------------------------------------------------------"
echo "reboot when ready"
echo "-------------------------------------------------------"
