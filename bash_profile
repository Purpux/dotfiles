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

# clean-up
export HISTFILE="$XDG_DATA_HOME/bash/history"
export LESSHISTFILE=/dev/null
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc"|source $MYVIMRC'
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"

$XDG_DATA_HOME/console-colorschemes/atlier_dark_custom
[[ $(tty) == "/dev/tty1" ]] && tmux

# export XAUTHORITY="$XDG_RUNTIME_DIR/Xauthority"
# export MYSQL_HISTFILE="$XDG_DATA_HOME/mysql/history"
# export PULSE_COOKIE="$XDG_DATA_HOME/pulse/pulse-cookie"
