#!bin/bash

sudo apt update -y
sudo apt install zsh -y

echo zsh >> ~/.bashrc
source ~/.bashrc

sudo chsh -s $(which zsh) ubuntu

zsh

cd ~

mkdir -p ~/.zsh-plugins
cd ~/.zsh-plugins


git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
git clone https://github.com/zsh-users/zsh-autosuggestions.git


cp zshrc ~/.zshrc

source ~/.zshrc
