# Options - see zshoptions(1)
# Options are set in the order they appear in the man page

# Changing Directories
setopt auto_cd

# Completion
setopt list_packed

# Expansion and Globbing
setopt brace_ccl
setopt extended_glob
setopt glob_star_short
setopt hist_subst_pattern
setopt mark_dirs
setopt numeric_glob_sort
setopt rc_expand_param

# History
setopt extended_history
setopt hist_fcntl_lock
setopt hist_ignore_dups
setopt hist_ignore_space
setopt hist_no_store
setopt hist_reduce_blanks
setopt inc_append_history_time
# Following will probably be desirable if hist_ignore_dups is unset
#setopt hist_expire_dups_first
#setopt hist_find_no_dups

# Input/Output
setopt correct
setopt interactive_comments

# Prompting
setopt prompt_subst

# ZLE
unsetopt beep
