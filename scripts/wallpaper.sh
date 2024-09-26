#!/bin/bash

PIC=$(find ~/Pictures/ -type f | rofi -dmenu)

feh --bg-scale $PIC
[ $(echo -e "No\nYes" | rofi -dmenu -p "Do you want to copy filepath to clipboard?") == "Yes" ] && echo $PIC | xclip -selection clipboard
