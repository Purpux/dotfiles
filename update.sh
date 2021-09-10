#!/bin/bash

Array=(
	~/.*rc
	~/.bash_profile
)

for i in "${Array[@]}" ;do
	cp $i $(echo $i|cut -d "." -f 2)
done
cp -r ~/.config/{X11,tmux,openbox,python,neofetch} .
