# ZSH Completion System
autoload -U compinit; compinit
autoload -Uz prompt_purification_setup; prompt_purification_setup

# Autocomplete hidden files
_comp_options+=(globdots)
source ~/dotfiles/zsh/external/completion.zsh
source "$XDG_CONFIG_HOME/zsh/aliases"


setopt AUTO_PARAM_SLASH
unsetopt CASE_GLOB
# Push the current direcotry visited on to the stack.
setopt AUTO_PUSHD
# Do not store duplicate directories in the stack.
setopt PUSHD_IGNORE_DUPS
# Do not print the directory stack after using pushd or popd.
setopt PUSHD_SILENT 


fpath=($ZDOTDIR/external $fpath)
