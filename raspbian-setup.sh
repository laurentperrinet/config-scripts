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

sudo apt-get -y install python3-dev python3-tk python3-imaging-tk
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
  python3-pandas python3-sympy python3-nose


# remove mathematica
sudo apt-get remove wolfram-engine
sudo rm /usr/share/raspi-ui-overrides/applications/wolfram-language.desktop /usr/share/raspi-ui-overrides/applications/wolfram-mathematica.desktop
echo "-------------------------------------------------------"
echo "reboot when ready"
echo "-------------------------------------------------------"