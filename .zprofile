#!/usr/bin/env zsh

#################################################
# PATH HANDLING
#################################################

# Prevent duplicate entries in PATH
typeset -U path PATH

#################################################
# HOMEBREW
#################################################

# Load Homebrew environment only if installed
if [[ -x /opt/homebrew/bin/brew ]]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
fi

# Homebrew performance tweaks
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_DOWNLOAD_CONCURRENCY=10
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_ENV_HINTS=1

#################################################
# EDITOR / PAGER
#################################################

export EDITOR="/opt/homebrew/bin/nano"
export VISUAL="$EDITOR"
export PAGER="less"

# Better less behavior
export LESS="-R -F -X"

# Better man page rendering
export MANPAGER="less -R"

#################################################
# LOCALE
#################################################

export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

#################################################
# JAVA
#################################################

JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-23.jdk/Contents/Home"

if [[ -d "$JAVA_HOME" ]]; then
  export JAVA_HOME
  path=("$JAVA_HOME/bin" $path)
fi

#################################################
# ASDF VERSION MANAGER
#################################################

if [[ -d "$HOME/.asdf" ]]; then
  export ASDF_DATA_DIR="$HOME/.asdf"
  path=("$ASDF_DATA_DIR/shims" $path)
fi

#################################################
# PYTHON / PIP PERFORMANCE
#################################################

# Disable pip version check for faster installs
export PIP_DISABLE_PIP_VERSION_CHECK=1

#################################################
# ZSH COMPLETION CACHE
#################################################

# Faster completion loading
export ZSH_COMPDUMP="$HOME/.zcompdump-$HOST"

#################################################
# FINAL PATH EXPORT
#################################################

export PATH
