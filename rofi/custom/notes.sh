#!/usr/bin/env bash

notes_path="$HOME/notes"

dmenu_output=$(bash -c "ls $notes_path -1" | rofi -dmenu -p "🗒")

if [[ $dmenu_output ]]; then
    gedit "$HOME/notes/$dmenu_output"
fi



