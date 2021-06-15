#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias tmux='tmux -f ~/.config/tmux/tmux.conf'
alias irssi="irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi"
#alias cmatrix='cmatrix -C magenta' 
alias ':wq'='exit' 

#vim settings
set -o vi

#PS1 prompt
PS1='\[\033[1;35m\][\W]\[\033[1;31m\]\[\033[0m\]\$ '
export LESSHISTFILE=/dev/null
