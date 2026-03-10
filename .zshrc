#!/usr/bin/env zsh

#################################################
# POWERLEVEL10K INSTANT PROMPT (must be first)
#################################################

if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

#################################################
# ENVIRONMENT
#################################################

# Fix GPG terminal issues
export GPG_TTY=$(tty)

#################################################
# SHELL PERFORMANCE OPTIONS
#################################################

# Better history behavior
setopt HIST_IGNORE_DUPS
setopt HIST_IGNORE_ALL_DUPS
setopt SHARE_HISTORY
setopt HIST_REDUCE_BLANKS
setopt INC_APPEND_HISTORY

# Allow typing directory name to auto-cd
setopt AUTO_CD

#################################################
# COMPLETION CACHE (faster startup)
#################################################

export ZSH_COMPDUMP="$HOME/.cache/.zcompdump-$HOST"

#################################################
# OH MY ZSH
#################################################

export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Disable update checks
DISABLE_AUTO_UPDATE="true"

#################################################
# PLUGINS
#################################################

plugins=(
  git
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

#################################################
# LOAD OH MY ZSH
#################################################

source "$ZSH/oh-my-zsh.sh"

#################################################
# OPTIONAL TOOL INITIALIZATION
#################################################

# zoxide (better cd)
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

#################################################
# HISTORY SEARCH KEYBINDINGS
#################################################

bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

#################################################
# LAZY LOAD PYENV
#################################################

pyenv() {
  unset -f pyenv
  export PYENV_ROOT="$HOME/.pyenv"
  path=("$PYENV_ROOT/bin" $path)
  eval "$(command pyenv init -)"
  pyenv "$@"
}

#################################################
# LAZY LOAD CONDA
#################################################

conda() {
  unset -f conda
  if [[ -f /opt/anaconda3/etc/profile.d/conda.sh ]]; then
    source /opt/anaconda3/etc/profile.d/conda.sh
  fi
  conda "$@"
}

#################################################
# FZF
#################################################

if [[ -f ~/.fzf.zsh ]]; then
  source ~/.fzf.zsh
fi

#################################################
# POWERLEVEL10K CONFIG
#################################################

[[ -f ~/.p10k.zsh ]] && source ~/.p10k.zsh

#################################################
# USER ALIASES
#################################################

[[ -f ~/.zsh_aliases ]] && source ~/.zsh_aliases
