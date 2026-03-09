# Powerlevel10k Instant Prompt
if [[ -r "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh" ]]; then
  source "${XDG_CACHE_HOME:-$HOME/.cache}/p10k-instant-prompt-${(%):-%n}.zsh"
fi

# GPG TTY
export GPG_TTY=$(tty)

# Completion cache
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# Oh My Zsh base
export ZSH="$HOME/.oh-my-zsh"
ZSH_THEME="powerlevel10k/powerlevel10k"

# Plugins
plugins=(
  git
  z
  zsh-autosuggestions
  zsh-syntax-highlighting
)

DISABLE_AUTO_UPDATE="true"

# Load Oh My Zsh
source $ZSH/oh-my-zsh.sh

# Optional: extra tools initialization (lazy load if possible)
# e.g., zoxide directory jumping
if command -v zoxide >/dev/null 2>&1; then
  eval "$(zoxide init zsh)"
fi

# Bind arrow keys for history substring search
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# Lazy pyenv (if you use pyenv)
pyenv() {
  unset -f pyenv
  export PYENV_ROOT="$HOME/.pyenv"
  export PATH="$PYENV_ROOT/bin:$PATH"
  eval "$(command pyenv init -)"
  pyenv "$@"
}

# Lazy conda (if you use conda)
conda() {
  unset -f conda
  source /opt/anaconda3/etc/profile.d/conda.sh
  conda "$@"
}

# fzf keybindings and completion
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

# Optional: aliases
[ -f ~/.zsh_aliases ] && source ~/.zsh_aliases
