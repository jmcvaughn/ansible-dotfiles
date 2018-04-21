# Open one or more specified files using xdg-open
open() {
    for i; do
        if [ "${i##*.}" = "jnlp" ]; then
            (javaws $i &) &> /dev/null
        else
            (xdg-open $i &) &> /dev/null
        fi
    done
}

# Update
ud() {
    pacaur -Syu "$@" && sudo pacman -Rsn --noconfirm $(pacman -Qdtq) \
      2> /dev/null
}

