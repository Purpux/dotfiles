# /etc/skel/.bashrc
# Put your fun stuff here.
[[ $- != *i* ]] && return

#aliases
alias ls='ls --color=auto'
alias grep='grep --color=auto'
alias rm="rm -i"
alias ':wq'='exit'
alias sudo='doas'
alias useflags='vim /var/db/repos/gentoo/profiles/use.desc'

#cleanup
alias wget="wget --hsts-file=$XDG_CACHE_HOME/wget/history"
alias python="HOME=$XDG_DATA_HOME/python python"
alias irssi="irssi --config="$XDG_CONFIG_HOME"/irssi/config --home="$XDG_DATA_HOME"/irssi"
alias minecraft-launcher="HOME=$XDG_DATA_HOME/minecraft minecraft-launcher"

#global settings
set -o vi
shopt -s cmdhist
stty -ixon

#PS1 prompt
PS1="\[\033[1;34m\]\u\[\033[1;35m\][\W]\[\033[0m\]\$ "

#functions
tm (){
	case "$1" in
		repos)	cd ~/bin/repos ;;
		hdd)	cd /mnt/hdd ;;
		ssd)	cd /mnt/ssd ;;
	esac
}
