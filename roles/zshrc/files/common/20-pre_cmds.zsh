# Pre-commands

# Run before displaying prompt
precmd() {
    # Window title
    print -nP '\033]2;%n@%m:%3~\007'

    # Version control system prompt
    vcs_info
}

# Run before running command
preexec() {
    # Window title
    print -nP '\033]2;$1 (%n@%m:%3~)\007'
}

