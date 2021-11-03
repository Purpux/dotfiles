# /etc/skel/.bashrc
# Put your fun stuff here.
[[ $- != *i* ]] && return

#aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm="rm -i"
alias ':wq'='exit' 
alias sudo='doas'

#cleanup
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget/history"
alias irssi="irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi"
alias minecraft-launcher="HOME=$XDG_DATA_HOME/minecraft minecraft-launcher"

#global settings
set -o vi
shopt -s cmdhist

#PS1 prompt
PS1="\[\033[1;34m\]\u\[\033[1;35m\][\W]\[\033[0m\]\$ "

#functions
takeme (){
	case "$1" in
		home)	cd ~ ;;
		repos)	cd ~/bin/repos ;;
		music)	cd ~/media/music ;;
		hdd)	cd /mnt/hdd ;;
	esac
}

# alias tmux='tmux -f ~/.config/tmux/tmux.conf'
