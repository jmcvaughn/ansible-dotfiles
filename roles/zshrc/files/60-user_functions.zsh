# Open one or more specified files using xdg-open
o() {
    for i; do
        (xdg-open $i &) &> /dev/null
    done
}
