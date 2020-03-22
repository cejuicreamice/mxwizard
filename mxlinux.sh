#!/bin/bash

neofetch

# Basic dependencies
printf "\e[30m"
printf "[ .. ] Basic settings"
printf "\033\e[0m"
cd ~
pwd
mkdir Clones GitHub React Documents/School Documents/Templates Documents/Reading
ls
sudo apt update
sudo apt-get update && sudo apt-get upgrade -y
sudo apt-get install build-essential libgl1-mesa-glx libegl1-mesa libxrandr2 libxrandr2 libxss1 libxcursor1 libxcomposite1 libasound2 libxi6 libxtst6 wget curl xorg-server -y
printf "\e[30m"
printf "[ \e[32mok\e[30m ] Basic settings"
printf "\033\e[0m"

# GitHub SSH keys
printf "\e[30m"
printf "[ .. ] GitHub SSH keys"
printf "\033\e[0m"
git config --global user.name "Jorge A. Flores"
git config --global user.email "jorge.nunez@cimat.mx"
ssh-keygen -t rsa -C "jorge.nunez@cimat.mx" -b 4096
ssh -i $PWD/.ssh/id_rsa git@github.com
printf "\e[30m"
printf "[ \e[32mok\e[30m ] GitHub SSH keys"
printf "\033\e[0m"

# Utilities
printf "\e[30m"
printf "[ .. ] Utilities"
printf "\033\e[0m"
sudo apt-get install kchmviewer pdftk okular texlive-full -y
cd GitHub
git clone https://github.com/jaflonu/vimrc.git
cd vimrc
bash vimrc.sh
printf "\e[30m"
printf "[ \e[32mok\e[30m ] Utilities"
printf "\033\e[0m"

# Nvidia driver installation
printf "\e[30m"
printf "[ .. ] Nvidia driver installation"
printf "\033\e[0m"
cd ~
su-to-root -c "/usr/local/bin/ddm-mx -i nvidia"
printf "\e[30m"
printf "[ \e[32mok\e[30m ] Nvidia driver installation"
printf "\033\e[0m"

# NVM-Node and Gatsby installations
printf "\e[30m"
printf "[ .. ] NVM-Node and Gatsby installations"
printf "\033\e[0m"
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.1/install.sh | bash
nvm --version
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"
nvm install 10
nvm use 10
npm --version
node --version
npm install -g gatsby-cli
printf "\e[30m"
printf "[ \e[32mok\e[30m ] NVM-Node and Gatsby installations"
printf "\033\e[0m"

# Julia installation
printf "\e[30m"
printf "[ .. ] Julia installation"
printf "\033\e[0m"
cd Downloads
wget https://julialang-s3.julialang.org/bin/linux/x64/1.4/julia-1.4.0-linux-x86_64.tar.gz
tar xvfz julia-1.4.0-linux-x86_64.tar.gz
cd ~
mv /home/jafn/Downloads/julia-1.4.0 /home/jafn/
sudo ln -s /home/jafn/julia-1.4.0/bin/julia /usr/local/bin/julia
printf "\e[30m"
printf "[ \e[32mok\e[30m ] Julia installation"
printf "\033\e[0m"

# Anaconda installation
printf "\e[30m"
printf "[ .. ] Anaconda installation"
printf "\033\e[0m"
sudo wget https://repo.anaconda.com/archive/Anaconda3-2020.02-Linux-x86_64.sh -O ~/Downloads/anaconda.sh
bash ~/Downloads/anaconda.sh -b -p ~/anaconda3
export PATH=~/anaconda3/bin:$PATH
printf "\e[30m"
printf "[ \e[32mok\e[30m ] Anaconda installation"
printf "\033\e[0m"

# i3wm installation
printf "\e[30m"
printf "[ .. ] i3wm installation"
printf "\033\e[0m"
sudo apt install i3 i3status suckless-tools -y
printf "\e[30m"
printf "[ \e[32mok\e[30m ] i3wm installation"
printf "\033\e[0m"

printf "You are ready to go!"
