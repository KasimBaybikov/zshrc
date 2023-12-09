ZSH=$HOME/.zsh

# Load config scripts
source $ZSH/main.zsh
source $ZSH/aliases.zsh
source $ZSH/exports.zsh
source $ZSH/autocompletes.zsh
source $ZSH/lscolors.zsh
source $ZSH/prompt.zsh
source $(brew --prefix)/share/zsh-autosuggestions/zsh-autosuggestions.zsh
source $ZSH/autosuggestions-settings.zsh
source $(brew --prefix)/opt/zsh-vi-mode/share/zsh-vi-mode/zsh-vi-mode.plugin.zsh
