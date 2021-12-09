#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

startup (){
	XDG_SESSION_TYPE=wayland dbus-run-session startplasma-wayland
}

# envirnoment variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export PYTHONSTARTUP="$XDG_CONFIG_HOME/python/config.py"
export EDITOR="vi"
export BROWSER="firefox"
export MOZ_ENABLE_WAYLAND=1

# clean-up
export HISTFILE="$XDG_DATA_HOME/bash/history"
export LESSHISTFILE=/dev/null
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java
export WGETRC="$XDG_CONFIG_HOME/wget/wgetrc"
export VIMINIT='let $MYVIMRC="$XDG_CONFIG_HOME/vim/vimrc"|source $MYVIMRC'
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"
export PASSWORD_STORE_DIR="$XDG_DATA_HOME/pass"
export KDEHOME="$XDG_CONFIG_HOME/KDE"
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

[[ $(tty) == "/dev/tty1" ]] && startup
