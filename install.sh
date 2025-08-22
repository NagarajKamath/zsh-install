#!/bin/bash
set -e

sudo apt update -y
sudo apt install zsh git -y

sudo chsh -s $(which zsh) ubuntu

mkdir -p ~/.zsh-plugins
cd ~/.zsh-plugins

[ ! -d "zsh-syntax-highlighting" ] && git clone https://github.com/zsh-users/zsh-syntax-highlighting.git
[ ! -d "zsh-autosuggestions" ] && git clone https://github.com/zsh-users/zsh-autosuggestions.git

# Copy .zshrc from script folder
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"
cp "$SCRIPT_DIR/zshrc" ~/.zshrc

echo "✅ Installed and configured zsh. Reconnect SSH to see it."
