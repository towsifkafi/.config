#!/usr/bin/env bash

tmux_sessions=$(tmux ls)

dmenu_output=$(echo "$tmux_sessions" | rofi -dmenu -p "tmux: " | cut -d ':' -f1)

if [[ $dmenu_output ]]; then
    gnome-terminal --tab -- tmux a -t $dmenu_output
fi
