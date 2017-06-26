# ZLE - see zshzle(1)
bindkey -v                      # Set 'main' keymap to viins 

# User-defined widgets, declarations and bindings
historyup-vicmd() {             # Switch to vicmd and search on up arrow
    zle -K vicmd
    zle history-beginning-search-backward
}

historydown-vicmd() {           # Switch to vicmd and search on down arrow
    zle -K vicmd
    zle history-beginning-search-forward
}

expandorcomplete-vicmd() {      # Switch to main and expand/complete on tab
    zle -K main
    zle expand-or-complete
}

# Declarations
zle -N historyup-vicmd
zle -N historydown-vicmd
zle -N expandorcomplete-vicmd

# Bindings
bindkey -M main  "^[[A" historyup-vicmd                 # Up Arrow
bindkey -M vicmd "^[[A" historyup-vicmd                 # Up Arrow
bindkey -M vicmd "k"    historyup-vicmd 
bindkey -M main  "^[[B" historydown-vicmd               # Down Arrow
bindkey -M vicmd "^[[B" historydown-vicmd               # Down Arrow
bindkey -M vicmd "j"    historydown-vicmd
bindkey -M vicmd "\t" expandorcomplete-vicmd            # Tab


# Standard Widgets
# Movement
bindkey -M main "^[[1;2D" vi-backward-word              # Shift-Left Arrow
bindkey -M main "^[[1;5D" vi-backward-word              # Ctrl-Left Arrow
bindkey -M main "^[[1;2C" vi-forward-word               # Shift-Right Arrow
bindkey -M main "^[[1;5C" vi-forward-word               # Ctrl-Right Arrow
bindkey -M main "^[[H" vi-digit-or-beginning-of-line    # Home
bindkey -M main "^[[F" vi-end-of-line                   # End

# Modifying Text
bindkey -M main "^?" backward-delete-char               # Backspace
bindkey -M main  "^[[3~" delete-char                    # Delete
bindkey -M vicmd "^[[3~" delete-char                    # Delete

# Completion
bindkey -M main " " magic-space                 # History expansion on space
