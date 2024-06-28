set nocompatible            " disable compatibility to old-time vi
set nocompatible            " disable compatibility to old-time vi
set ignorecase
set mouse=v
set incsearch
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set number
filetype plugin indent on
syntax on
set ttyfast

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'jiangmiao/auto-pairs'
Plug 'ellisonleao/gruvbox.nvim'
call plug#end()

colorscheme gruvbox
