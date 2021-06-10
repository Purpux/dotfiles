[[ -f ~/.config/X11/Xresources ]] && xrdb -load ~/.config/X11/Xresources
[[ -f ~/.config/X11/Xmodmap ]] && xmodmap ~/.config/X11/Xmodmap
xset r rate 200
xmodmap -e 'clear lock' &
wallpaper &
exec openbox-session
