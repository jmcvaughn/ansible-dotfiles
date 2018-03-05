# Zsh history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=15000
SAVEHIST=10000

# Environment
export CDPATH="$HOME"
export EDITOR="nvim"
export PATH="$PATH:$HOME/bin"

# Pagers
export LESS="-FiRX"
export LESSOPEN="| /usr/bin/src-hilite-lesspipe.sh %s"
export MANPAGER="less --line-numbers"

