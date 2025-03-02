# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# .COMPDUMP alt folder
export ZSH_COMPDUMP=$ZSH/cache/.zcompdump-$HOST

# Path to your oh-my-zsh installation.
export ZSH="/Users/vangaugh/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="powerlevel10k/powerlevel10k"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# Which plugins would you like to load?
# Standard plugins can be found in $ZSH/plugins/
# Custom plugins may be added to $ZSH_CUSTOM/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(brew git iterm2 macOS extract zsh-autosuggestions zsh-syntax-highlighting)

# (macOS-only) Prevent Homebrew from reporting - https://github.com/Homebrew/brew/blob/master/docs/Analytics.md
export HOMEBREW_NO_ANALYTICS=1

source $ZSH/oh-my-zsh.sh

# USER CONIGURATION

# You may need to manually set your language environment
export LANG='en_US.UTF-8'
export LC_ALL='en_US.UTF-8'

# ALIASES
source ~/.custom_aliases

# Bind Arrow Keys for History Substring Plugins
bindkey '^[[A' history-substring-search-up
bindkey '^[[B' history-substring-search-down

# CRONTAB NANO DEFAULT
export EDITOR="/opt/homebrew/bin/nano"
export VISUAL="$EDITOR"

# MEGA-CMD
export PATH="$PATH:/Applications/MEGAcmd.app/Contents/MacOS"

# JAVA PATH
export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-23.jdk/Contents/Home"
export PATH="$PATH:$JAVA_HOME/bin"

# ANDROID SDK PATHS
export ANDROID_HOME="/opt/homebrew/share/android-commandlinetools"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export ANDROID_SDK_ROOT="$ANDROID_HOME"

# GOLANG PATHS
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# PYTHON 3
export PATH="/opt/homebrew/opt/python@3.13/libexec/bin:$PATH"

# CURL
export PATH="/opt/homebrew/opt/curl/bin:$PATH"
export LDFLAGS="-L/opt/homebrew/opt/curl/lib"
export CPPFLAGS="-I/opt/homebrew/opt/curl/include"
export PKG_CONFIG_PATH="/opt/homebrew/opt/curl/lib/pkgconfig"

# NVM
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# TAB COMPLETION
autoload -Uz compinit && compinit

# To customize prompt, run `p10k configure` or edit ~/.p10k.zsh.
[[ ! -f ~/.p10k.zsh ]] || source ~/.p10k.zsh

