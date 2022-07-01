#!/bin/bash

green="\033[1;32m"
normal="\033[0m"

# update package index
echo -e "${green}Updating package index...${normal}"
sudo apt-get update

echo -e "${green}Installing npm...${normal}"
sudo apt-get install npm

echo -e "${green}Fix npm eacces permission errors...${normal}"
mkdir ~/.npm-global
npm config set prefix '~/.npm-global'
echo 'PATH=~/.npm-global/bin:$PATH' >> ~/.profile
source ~/.profile

echo -e "${green}Npm eacces permission testing... (this may take a while)${normal}"
npm install -g jshint

echo -e "${green}Installing curl...${normal}"
sudo apt-get install curl

echo -e "${green}Installing unzip...${normal}"
sudo apt-get install unzip


# install fonts
echo -e "${green}Installing nerd agave fonts... (this may take a while)${normal}, you'd better download it via web brwser and install manually"
wget -c https://github.com/ryanoasis/nerd-fonts/releases/download/v2.1.0/Agave.zip
mkdir ~/.fonts/
unzip Agave.zip -d ~/.fonts
fc-cache -fv

# install rust
echo -e "${green}Installing rust cargo...${normal}"
echo -e "${green}Downloading... (this may take a long time)${normal}"
curl https://sh.rustup.rs -sSf | sh

# install neovim
sudo add-apt-repository ppa:neovim-ppa/unstable
sudo apt-get update
sudo apt-get install neovim


echo -e "${green}Successfully download all dependencies, run install.sh to install lunarvim${normal}"

