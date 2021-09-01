#!/bin/bash

for i in $(ls ~/.*rc ~/.bash_profile);do
	cp $i $(echo $i|cut -d "/" -f 4|tr -d ".")
done
cp -r ~/.config/{X11,tmux,openbox} .
