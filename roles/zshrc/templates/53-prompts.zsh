# vcs_info (version control systems, i.e. git) - see zshcontrib(1)
autoload -Uz vcs_info
zstyle ':vcs_info:*' formats '%F{magenta}(%b)%f%c%u '
zstyle ':vcs_info:*' actionformats '%F{magenta}(%b)%f%c%u %B%a%%b '
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' stagedstr '%F{green}●%f'       # dot: Unicode U+25CF
zstyle ':vcs_info:*' unstagedstr '%F{red}●%f'       # dot: Unicode U+25CF

# Prompts
# "~ % " or "~ (root) # "
PROMPT_COLOUR={{ zshrc.prompt_colour }}
PROMPT=\
'%B%F{$PROMPT_COLOUR}%3~%f%b ${vcs_info_msg_0_}%B%(!.%F{red}(root) %#%f.%#)%b '

