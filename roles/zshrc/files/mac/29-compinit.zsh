# Completion - see zshcompsys(1)

# Add zsh-completions to function path
fpath=(
    "/usr/local/share/zsh-completions"
    $fpath
)

# compinit
autoload -Uz compinit
compinit -u

