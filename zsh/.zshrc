# ZSH Completion System
autoload -U compinit; compinit
autoload -U prompt_purification_setup; prompt_purification_setup

# Autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh

setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB

source "$XDG_CONFIG_HOME/zsh/aliases"

fpath=($ZDOTDIR/external $fpath)
