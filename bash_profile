#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

# envirnoment variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/config.py"
export EDITOR="vi"
export BROWSER="lynx"
export LS_COLORS="*.c=00;31:"

# clean-up
export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
export HISTFILE="$XDG_DATA_HOME/bash/history"
export LESSHISTFILE=/dev/null
export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql/history"
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export PULSE_COOKIE="$XDG_DATA_HOME/pulse/pulse-cookie"
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"

[[ $(tty) == "/dev/tty1" ]] && startx $XDG_CONFIG_HOME/X11/xinitrc
