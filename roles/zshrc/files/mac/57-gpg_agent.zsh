# Use gpg-agent as SSH agent
# Taken from gpg-agent(1) - set SSH agent socket
if [ "${gnupg_SSH_AUTH_SOCK_by:-0}" -ne $$ ]; then
    export SSH_AUTH_SOCK="$(gpgconf --list-dirs agent-ssh-socket)"
fi

# Start gpg-agent as a daemon if not already running
pgrep -qxU $UID gpg-agent
if [ "$?" -ne 0 ]; then
    gpg-agent --daemon
fi

