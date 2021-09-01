#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias ':wq'='exit' 

#cleanup
alias tmux='tmux -f ~/.config/tmux/tmux.conf'
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget/history"

#vim settings
set -o vi

#PS1 prompt
PS1='\[\033[1;35m\][\W]\[\033[1;31m\]\[\033[0m\]\$ '

# shell functions 
wiki (){
	search_term="${1}"
	HOME=$XDG_DATA_HOME/w3m w3m https://wiki.archlinux.org/index.php?search=${search_term}
}
