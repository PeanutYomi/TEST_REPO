# User dependent .bashrc file
# If not running interactively, don't do anything
[[ "$-" != *i* ]] && return

# History Options
# Don't put duplicate lines in the history.
export HISTCONTROL=$HISTCONTROL${HISTCONTROL+,}ignoredups

# Prompt
export PS1="\[\e[0;33m\][\[\e[0;33m\]\u\[\e[0;32m\]@\[\e[0;33m\]\h:\[\e[0;35m\]\w\[\e[0;33m\]]\n\[\e[1;33m\]>\[$(tput sgr0)\]"

# LS color
export LS_COLORS='di=34:ln=35:so=32:pi=33:ex=31:bd=34;46:cd=34;43:su=30;41:sg=30;46:tw=30;42:ow=30;43'

# Alias
# Some people use a different file for aliases
if [ -f "${HOME}/.bash_aliases" ]; then
  	source "${HOME}/.bash_aliases"
fi

# Functions
# Some people use a different file for functions
if [ -f "${HOME}/.bash_functions" ]; then
	source "${HOME}/.bash_functions"
fi

# Environment Variables
# Some people use a different file for environment varibles
if [ -f "${HOME}/.bash_env" ]; then
	source "${HOME}/.bash_env"
fi

# Umask
# /etc/profile sets 022, removing write perms to group + others.
# Set a more restrictive umask: i.e. no exec perms for others:
# umask 027
# Paranoid: neither group nor others have any perms:
# umask 077
