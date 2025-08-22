# Enable command auto-completion
autoload -Uz compinit
compinit

# Enable history search with arrow keys
bindkey '^[[A' history-beginning-search-backward
bindkey '^[[B' history-beginning-search-forward

# Enable auto-correction (warns if you mistype a command)
setopt correct

# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Tab completion menu
zstyle ':completion:*' menu select

# Share history across all zsh sessions
setopt share_history
setopt hist_ignore_dups

# Save history
HISTSIZE=500000
SAVEHIST=500000
HISTFILE=~/.zsh_history

# Prompt (simple but clear)
PROMPT='%F{cyan}%n@%m%f %F{yellow}%~%f %# '
# Case-insensitive completion
zstyle ':completion:*' matcher-list 'm:{a-z}={A-Za-z}'

# Show menu when multiple options
zstyle ':completion:*' menu select
# Plugins
source ~/.zsh-plugins/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
source ~/.zsh-plugins/zsh-autosuggestions/zsh-autosuggestions.zsh

# Autosuggestion settings (make them visible)
ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'

