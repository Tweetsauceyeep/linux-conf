#!/bin/bash

vim $(find ~/.config/ -type f | fzf --preview 'bat --color=always {}')
