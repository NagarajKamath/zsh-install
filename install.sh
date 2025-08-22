#!/bin/bash
set -e

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

# Go back to script directory (where zshrc file is)
SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

# Copy zshrc from script folder → ~/.zshrc
cp "$SCRIPT_DIR/zshrc" ~/.zshrc

# Verify plugin load in a new zsh process
echo "🔍 Verifying zsh plugins..."
zsh -i -c '
if typeset -f __zsh_autosuggest_start >/dev/null && typeset -f __zsh_highlight_main__ >/dev/null; then
    echo "✅ Autosuggestions and syntax highlighting are active."
else
    echo "❌ Plugin check failed. Run: source ~/.zshrc inside zsh."
fi
'

echo "⚡ Setup complete. Reconnect SSH to start using zsh with autocomplete, autosuggestions, and syntax highlighting."
