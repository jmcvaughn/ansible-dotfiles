# Open one or more specified files using xdg-open
o() {
    for i; do
        if [ "${i##*.}" = "jnlp" ]; then
            (javaws $i &) &> /dev/null
        else
            (xdg-open $i &) &> /dev/null
        fi
    done
}
