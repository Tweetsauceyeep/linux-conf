#!/bin/bash

$FILE = find ~/.config/ -type f | fzf

alacritty --hold -e vim $FILE
