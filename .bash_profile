#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# envirnoment variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"

export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/config.py"
export EDITOR="vi"
export BROWSER="lynx"
export LS_COLORS="*.c=00;31:"

# clean-up
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export HISTFILE="$XDG_DATA_HOME/bash/history"
export LESSHISTFILE=/dev/null

[[ $(tty) == "/dev/tty1" ]] && startx /home/abv/.config/X11/xinitrc
