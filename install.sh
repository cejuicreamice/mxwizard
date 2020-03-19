#!/bin/bash
# A script for initial installations for MX
# jaflonu - 17/Mar/2020

cd ~
pwd
mkdir GitHub React Documents/Topics Documents/Classes Documents/Classes/1st Documents/Classes/2nd Documents/Classes/3rd
ls
sudo apt update
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essential libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 wget -y

# Utils
sudo apt-get install kchmviewer

# Nvidia Graphics
su-to-root -c "/usr/local/bin/ddm-mx -i nvidia"

# Julia


# Anaconda
sudo wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -O ~/Downloads/anaconda.sh
bash ~/Downloads/anaconda.sh -b -p ~/anaconda3
export PATH=~/anaconda3/bin:$PATH

# i3WM
