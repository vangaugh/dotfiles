# LOAD HOMEBREW
eval "$(/opt/homebrew/bin/brew shellenv)"

# PATH for User
PATH="/opt/homebrew/bin:$PATH"

# CRONTAB NANO DEFAULT
export EDITOR="/opt/homebrew/bin/nano"
export VISUAL="$EDITOR"
export PAGER="less"

# remove duplicat entries from $PATH
# zsh uses $path array along with $PATH
typeset -U PATH path

# LOAD GPG
export GPG_TTY=$(tty)

# You may need to manually set your language environment
export LANG="en_US.UTF-8"
export LC_ALL="en_US.UTF-8"

# MEGA-CMD
#export PATH="$PATH:/Applications/MEGAcmd.app/Contents/MacOS"

# PYTHON 3
export PATH="/opt/homebrew/opt/python@3.13/libexec/bin:$PATH"
export PATH="/opt/homebrew/Cellar/tcl-tk/bin:$PATH"

# ASDF (NODE & RUBY & MORE PACAKGE MANAGER)
## https://blog.driftingruby.com/my-development-environment-on-macos-15-sequoia/
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

# JAVA PATH
export JAVA_HOME="/Library/Java/JavaVirtualMachines/temurin-23.jdk/Contents/Home"
export PATH="$PATH:$JAVA_HOME/bin"

# GOLANG
export GOPATH="$HOME/go"
export PATH="$PATH:$GOPATH/bin"

# ANDROID SDK PATHS
export ANDROID_HOME="/opt/homebrew/share/android-commandlinetools"
export PATH="$PATH:$ANDROID_HOME/emulator"
export PATH="$PATH:$ANDROID_HOME/tools"
export PATH="$PATH:$ANDROID_HOME/tools/bin"
export PATH="$PATH:$ANDROID_HOME/platform-tools"
export ANDROID_SDK_ROOT="$ANDROID_HOME"
