#!/usr/bin/env bash

dmenu_args="-nb #1e1e1e -sf #1e1e1e -sb #b87dc5 -nf #b87dc5"
notes_path="$HOME/notes"

dmenu_output=$(bash -c "ls $notes_path -1" | rofi -dmenu -p "🗒" $dmenu_args)

if [[ $dmenu_output ]]; then
    gedit "$HOME/notes/$dmenu_output"
fi



