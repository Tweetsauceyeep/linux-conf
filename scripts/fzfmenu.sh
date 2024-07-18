#!/bin/bash

#alacritty --title "floating-term" -e "fzf $* < /proc/$$/fd/0 > /proc/$$/fd/1"
alacritty -e bash "fzf $* < /proc/$$/fd/0 > /proc/$$/fd/1"
