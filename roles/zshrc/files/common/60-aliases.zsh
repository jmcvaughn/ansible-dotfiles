alias .="source"

# sudo
alias s="sudo "
alias si="sudo -i"
alias sudo="sudo "

# File viewing/editing
alias diff="diff ==color=auto"
alias grep="grep --color=auto"
alias les="less"
alias o="open"

# Process management
alias top="htop"

# Applications
alias aria2c="aria2c --seed-time=0"
alias ddi="sudo dd bs=16K conv=fsync status=progress"
alias hist="fc -liD -31"
alias scpk="scp -o UserKnownHostsFile=/dev/null"
alias sshk="ssh -o UserKnownHostsFile=/dev/null"

# cp
alias cp="cp --reflink=auto --sparse=always"
alias cpr="cp --recursive --reflink=auto --sparse=always"

# ls
alias l="ls --color=auto"
alias la="ls --all --color=auto"
alias lal="ls -l --all --color=auto --human-readable"
alias lA="ls --almost-all --color=auto"
alias lAl="ls -l --almost-all --color=auto --human-readable"
alias ll="ls -l --color=auto --human-readable"
alias lla="ls -l --all --color=auto --human-readable"
alias llA="ls -l --almost-all --color=auto --human-readable"
alias ls="ls --color=auto"

