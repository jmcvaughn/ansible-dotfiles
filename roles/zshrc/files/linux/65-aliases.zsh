# Applications
alias ud="pacaur -Syu && sudo pacman -Rsn --noconfirm $(pacman -Qdtq) 2> /dev/null"
alias virsh="virsh --connect qemu:///system"
alias virt-install="virt-install --connect qemu:///system"
alias xc="xclip -rmlastnl -selection clipboard"

