# Environment
export CDPATH="$HOME"
export EDITOR="/usr/bin/nvim"
export PATH="$PATH:$HOME/bin"
# Pagers
export PAGER="/usr/bin/col --no-backspaces | /usr/bin/nvim -c 'set readonly'"
export GIT_PAGER="/usr/bin/less"
export MANPAGER="/usr/bin/nvim -c 'set filetype=man' -"
export SYSTEMD_PAGER="/usr/bin/less"

# Zsh history
HISTFILE="$HOME/.zsh_history"
HISTSIZE=15000
SAVEHIST=10000
