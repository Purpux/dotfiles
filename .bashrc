#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias lynx='lynx https://lite.duckduckgo.com/lite/'
alias tmux='tmux -f ~/.config/tmux/tmux.conf'
alias cmatrix='cmatrix -C magenta' 
alias ':wq'='exit' 

#vim settings
set -o vi

#PS1 prompt
PS1='\[\033[1;35m\][\W]\[\033[1;31m\]\[\033[0m\]\$ '
export LESSHISTFILE=/dev/null
