[[ -f ~/.config/X11/Xresources ]] && xrdb -load ~/.config/X11/Xresources
wallpaper &
sxhkd &
exec openbox-session
