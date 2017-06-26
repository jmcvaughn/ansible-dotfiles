# Pre-commands

# Run before displaying prompt
precmd() {
    # Window title
    printf '\33]2;%s\007' "$(echo ${TTY:9}): $USER@$HOST:$PWD"

    # Version control system prompt
    vcs_info
}

# Run before running command
preexec() {
    # Window title
    printf '\33]2;%s\007' "$(echo ${TTY:9}): $1 ($USER@$HOST:$PWD)"
}
