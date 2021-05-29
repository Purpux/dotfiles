#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

startup (){
	if [[ $(tty) == "/dev/tty1" ]];then
		~/.config/themes/amora
		tmux
	elif [[ $(tty) == "/dev/tty2" ]];then
		~/.config/themes/custom_solarized_dark
		startx
	fi
}

# clean-up
export XAUTHORITY=$XDG_RUTIME_DIR

# envirnoment variables
export PYTHONSTARTUP="$HOME/.config/python/config.py"
export EDITOR="vi"
export BROWSER="lynx"
export XDG_CONFIG_HOME="$HOME/.config"
export LS_COLORS="*.c=00;31:"

startup
