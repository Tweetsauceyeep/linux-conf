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
Plug 'gruvbox-community/gruvbox'
" Vim LSP and Autocomplete (kinda bloat)
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
Plug 'prabirshrestha/asyncomplete.vim'
Plug 'prabirshrestha/asyncomplete-lsp.vim'
call plug#end()

colorscheme gruvbox
set termguicolors
highlight Normal guibg=none

" asycomplete
inoremap <expr> <Tab>   pumvisible() ? "\<C-n>" : "\<Tab>"
inoremap <expr> <S-Tab> pumvisible() ? "\<C-p>" : "\<S-Tab>"
inoremap <expr> <cr>    pumvisible() ? asyncomplete#close_popup() : "\<cr>"
