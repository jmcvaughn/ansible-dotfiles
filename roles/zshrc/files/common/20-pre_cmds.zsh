# Pre-commands

# Run before displaying prompt
precmd() {
    # Window title
    print -nP '\033]2;${TTY:9}: %n@%m:%3~\007'

    # Version control system prompt
    vcs_info
}

# Run before running command
preexec() {
    # Window title
    print -nP '\033]2;(${TTY:9}): $1 (%n@%m:%3~)\007'
}

