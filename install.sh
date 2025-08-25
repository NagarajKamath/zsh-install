#!/bin/bash


# Update + install zsh & git
sudo apt update -y  &> /dev/null
sudo apt install zsh git -y  &> /dev/null

# Set default shell to zsh for ubuntu user
sudo chsh -s $(which zsh) ubuntu   &> /dev/null

# Install plugins
mkdir -p ~/.zsh-plugins  &> /dev/null
cd ~/.zsh-plugins

[ ! -d "zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git  &> /dev/null
[ ! -d "zsh-autosuggestions" ] && git clone https://github.com/zsh-users/zsh-autosuggestions.git  &> /dev/null


# Copy zshrc from script folder → ~/.zshrc
cd; cd zsh-install; cat zshrc > ~/.zshrc  &> /dev/null

echo "Zsh installed. Exiting this terminal"

zsh
