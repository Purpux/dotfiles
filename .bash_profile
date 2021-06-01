#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

startup (){
	if [[ $(tty) == "/dev/tty1" ]];then
		. ~/.config/themes/amora
		tmux
	elif [[ $(tty) == "/dev/tty2" ]];then
		startx
	fi
}

# envirnoment variables
export PYTHONSTARTUP="$HOME/.config/python/config.py"
export EDITOR="vi"
export BROWSER="lynx"
export XDG_CONFIG_HOME="$HOME/.config"
export LS_COLORS="*.c=00;31:"

# clean-up
# why does this suddenly not work  ?
# it was working fine all this time :(
#export XAUTHORITY="$XDG_RUTIME_DIR/Xauthority"


. ~/.config/themes/custom_solarized_dark
startup
