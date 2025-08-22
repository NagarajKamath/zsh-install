#!/bin/bash

set -e  # stop if any command fails

# Update and install zsh
sudo apt update -y
sudo apt install zsh git -y

# Set zsh as default shell
sudo chsh -s $(which zsh) ubuntu

# Create plugins folder
mkdir -p ~/.zsh-plugins
cd ~/.zsh-plugins

# Clone plugins if not already cloned
[ ! -d "zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
[ ! -d "zsh-autosuggestions" ] && git clone https://github.com/zsh-users/zsh-autosuggestions.git

# Copy provided zshrc (relative to script path)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cp "$SCRIPT_DIR/zshrc" ~/.zshrc

echo "✅ Zsh installed and configured. Log out and log back in to use it."
