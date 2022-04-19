set number
set tabstop=2
set shiftwidth=2
set expandtab
"set softtabstop=2
set autoindent
set smartindent
set smarttab
set mouse=a

set whichwrap+=<,>,h,l,[,]
set nobackup
set noswapfile
set nowritebackup

set nohlsearch
set linebreak

set ignorecase
nnoremap j gj
nnoremap gj j
nnoremap gk k
nnoremap k gk

let g:plug_home = stdpath('data') . '/plugged'

call plug#begin()
  Plug 'tpope/vim-sensible'
  Plug 'tpope/vim-surround'
  Plug 'neovim/nvim-lspconfig' | Plug 'williamboman/nvim-lsp-installer' | Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'glepnir/lspsaga.nvim'
call plug#end()

