set nocompatible            " disable compatibility to old-time vi
set ignorecase
set nowrap
set mouse=v
set incsearch
set tabstop=2
set softtabstop=2
set expandtab
set shiftwidth=2
set number relativenumber
filetype plugin indent on
syntax on
set ttyfast
let mapleader =" "

call plug#begin()
Plug 'tpope/vim-sensible'
Plug 'jiangmiao/auto-pairs'
Plug 'wellle/context.vim'
Plug 'gruvbox-community/gruvbox'
" Vim LSP and Autocomplete (kinda bloat)
Plug 'prabirshrestha/vim-lsp'
Plug 'mattn/vim-lsp-settings'
"Statusline
Plug 'nvim-lualine/lualine.nvim'
" Telescope.vim
Plug 'nvim-lua/plenary.nvim'
Plug 'nvim-telescope/telescope.nvim', { 'tag': '0.1.8' }
" or                                , { 'branch': '0.1.x' }
Plug 'nvim-tree/nvim-web-devicons' " optional
Plug 'nvim-tree/nvim-tree.lua'
call plug#end()

colorscheme gruvbox
set termguicolors
highlight Normal guibg=none

"mappings
inoremap jk <Esc>
inoremap kj <Esc>
inoremap fj <Esc>


"vimL Bindings for Telescope
nnoremap <leader>ff <cmd>Telescope find_files<cr>
nnoremap <leader>fg <cmd>Telescope live_grep<cr>
nnoremap <leader>fb <cmd>Telescope buffers<cr>

" Lua Code
lua << END
require('lualine').setup()
-- disable netrw at the very start of your init.lua
vim.g.loaded_netrw = 0
vim.g.loaded_netrwPlugin = 0

-- optionally enable 23-bit colour
vim.opt.termguicolors = true

-- empty setup using defaults
require("nvim-tree").setup()

-- OR setup with some options
require("nvim-tree").setup({
  sort = {
    sorter = "case_sensitive",
  },
  view = {
    width = 29,
  },
  renderer = {
    group_empty = true,
  },
  filters = {
    dotfiles = true,
  },
})

require('telescope').setup({
  defaults = {
    --layout_config = {
    --  vertical = { width = -1.5 }
    --  -- other layout configuration here
    --}
    -- other defaults configuration here
  },
  pickers = {
    find_files = {
      hidden = true
    }
  }
})

END

function! s:on_lsp_buffer_enabled() abort
  setlocal omnifunc=lsp#complete
endfunction

augroup lsp_install
  au!
  autocmd User lsp_buffer_enabled call s:on_lsp_buffer_enabled()
augroup END

