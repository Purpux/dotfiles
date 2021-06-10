#
# ~/.bash_profile
#

startup (){
	if [[ $(tty) == "/dev/tty1" ]];then
		. ~/.config/themes/console_colorschemes/amora
		startx
	elif [[ $(tty) == "/dev/tty2" ]];then
		tmux
	fi
}

[[ -f ~/.bashrc ]] && . ~/.bashrc

# envirnoment variables
export PYTHONSTARTUP="$HOME/.config/python/config.py"
export EDITOR="vi"
export BROWSER="lynx"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export LS_COLORS="*.c=00;31:"

# clean-up
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export HISTFILE="$XDG_DATA_HOME/bash/history"

[[ $TERM == "linux" ]] && . ~/.config/themes/console_colorschemes/custom_solarized_dark
startup
