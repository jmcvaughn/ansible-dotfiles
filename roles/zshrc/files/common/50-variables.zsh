# Zsh history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=15000
SAVEHIST=10000

# Environment
export CDPATH="$HOME"
export EDITOR="nvim"
export PATH="$PATH:$HOME/bin"

# less options
local less_opts=(
    "--quit-if-one-screen"
    "--ignore-case"
    "--RAW-CONTROL-CHARS"
    "--HILITE-UNREAD"
    "--no-init"
)
export LESS="$(eval echo $less_opts)"

# Pagers
export MANPAGER="less --line-numbers"

