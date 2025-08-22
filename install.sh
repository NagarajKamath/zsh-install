#!/bin/bash


# Update + install zsh & git
sudo apt update -y
sudo apt install zsh git -y

# Set default shell to zsh for ubuntu user
sudo chsh -s $(which zsh) ubuntu

# Install plugins
mkdir -p ~/.zsh-plugins
cd ~/.zsh-plugins

[ ! -d "zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
[ ! -d "zsh-autosuggestions" ] && git clone https://github.com/zsh-users/zsh-autosuggestions.git


# Copy zshrc from script folder → ~/.zshrc
cd;cp "Zshell-install-script/zshrc" ~/.zshrc

echo "Zsh installed. Now close this terminal and open again. Exiting this terminal"

kill -9 $PPID
