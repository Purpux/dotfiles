#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm="rm -i"
alias ':wq'='exit' 

#cleanup
alias tmux='tmux -f ~/.config/tmux/tmux.conf'
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget/history"
alias vncviewer="HOME=$XDG_CONFIG_HOME/vnc vncviewer"
alias irssi="irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi"

#global settings
set -o vi
shopt -s cmdhist

#PS1 prompt
PS1='\[\033[1;35m\][\W]\[\033[1;31m\]\[\033[0m\]\$ '

#functions
takeme (){
	case "$1" in
		home)	cd ~ ;;
		repos)	cd ~/bin/repos ;;
		music)	cd ~/media/music ;;
	esac
}
