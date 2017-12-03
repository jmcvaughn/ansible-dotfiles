alias cp="cp --reflink=auto --sparse=always"
alias .="source"

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

# sudo
alias s="sudo "
alias si="sudo -i"
alias sudo="sudo "

# File viewing/editing
alias c="cat"
alias p="$PAGER"
alias v="nvim"

# Process management
alias b="bg"
alias f="fg"
alias j="jobs"
alias k="kill"
alias k9="kill -9"
alias t="htop"
alias top="htop"
alias u="ps -fu $USER"

# Applications
alias aria2c="aria2c --seed-time=0"
alias ddi="sudo dd bs=16K conv=fsync status=progress"
alias g="grep"
alias h="fc -liD -31"
alias pg="ping google.com"
alias scpk="scp -o UserKnownHostsFile=/dev/null"
alias sshk="ssh -o UserKnownHostsFile=/dev/null"
alias ud="pacaur -Syu && sudo pacman -Rsn $(pacman -Qdtq) 2> /dev/null"
alias virsh="virsh --connect qemu:///system"
alias virt-install="virt-install --connect qemu:///system"
alias xc="xclip -rmlastnl -selection clipboard"
