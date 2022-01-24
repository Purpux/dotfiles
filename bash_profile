#
# ~/.bash_profile
#

[[ -f ~/.bashrc ]] && . ~/.bashrc

startup (){
	if [ -z "${XDG_RUNTIME_DIR}" ]; then
		export XDG_RUNTIME_DIR=/tmp/${UID}-runtime-dir
		if ! test -d "${XDG_RUNTIME_DIR}"; then
			mkdir "${XDG_RUNTIME_DIR}"
			chmod 0700 "${XDG_RUNTIME_DIR}"
		fi
	fi
	dbus-run-session sway
}

# envirnoment variables
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_PICTURES_DIR="$HOME/media/screenshots"
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
export GTK2_RC_FILES="$XDG_CONFIG_HOME/gtk-2.0/gtkrc"

[[ $(tty) == "/dev/tty1" ]] && startup
