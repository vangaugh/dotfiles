# LOAD HOMEBREW
eval "$(/opt/homebrew/bin/brew shellenv)"

# BREW TWEAKS - SPEED
export HOMEBREW_NO_AUTO_UPDATE=1
export HOMEBREW_DOWNLOAD_CONCURRENCY=10
export HOMEBREW_NO_ANALYTICS=1
export HOMEBREW_NO_ENV_HINTS=1

# CRONTAB NANO DEFAULT
export EDITOR="/opt/homebrew/bin/nano"
export VISUAL="$EDITOR"
export PAGER="less"

# Remove Duplicate Entries From $PATH
typeset -U PATH path

# Language Environment
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# Java
export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-23.jdk/Contents/Home"
export PATH="$JAVA_HOME/bin:$PATH"

# ASDF
if [ -d "$HOME/.asdf" ]; then
  export ASDF_DATA_DIR="$HOME/.asdf"
  export PATH="${ASDF_DATA_DIR}/shims:$PATH"
fi
