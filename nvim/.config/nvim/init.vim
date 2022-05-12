set number
set numberwidth=6
"set tabstop=2
set shiftwidth=2
"set softtabstop=2
set noexpandtab
set autoindent
set smartindent
set smarttab
set mouse=a
set wildmenu

set autoread

set cursorline
" set colorcolumn=80
set whichwrap+=<,>,h,l,[,]
set nobackup
set noswapfile
set nowritebackup

set splitbelow
set splitright

set hidden
set showcmd
set showmatch

set scrolloff=4

set undofile

set nohlsearch
set linebreak

set ignorecase
set smartcase
set incsearch
set laststatus=3

set list
let mapleader=" "
let localleader=";"


let g:plug_home = stdpath('data') . '/plugged'

if (has("nvim"))
  let $NVIM_TUI_ENABLE_TRUE_COLOR=1
endif

if (has("termguicolors"))
  set termguicolors
endif

call plug#begin()
  "Plug 'tpope/vim-surround'
  Plug 'lifepillar/vim-solarized8'
  Plug 'joshdick/onedark.vim'
    let g:onedark_terminal_italics=0
  Plug 'morhetz/gruvbox' 
  Plug 'itchyny/lightline.vim'
    set noshowmode
  Plug 'numToStr/Comment.nvim'
  Plug 'nvim-lua/plenary.nvim' | Plug 'nvim-telescope/telescope.nvim' | Plug 'nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}
    nnoremap <leader>ff <cmd>Telescope find_files<cr>
    nnoremap <leader>fg <cmd>Telescope live_grep<cr>
    nnoremap <leader>fb <cmd>Telescope buffers<cr>
    nnoremap <leader>fh <cmd>Telescope help_tags<cr>
  Plug 'neovim/nvim-lspconfig' | Plug 'nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}
  Plug 'tpope/vim-sleuth'
call plug#end()

colorscheme gruvbox

set showbreak=↪
set listchars=tab:→\ ,eol:¬,nbsp:␣,trail:-,extends:⟩,precedes:⟨,multispace:\:\:
",lead:-

hi NonText     guifg=#3B414D gui=NONE cterm=NONE
hi SpecialKey  guifg=#3B414D gui=NONE cterm=NONE
hi ColorColumn guifg=#3B414D

lua require('pluginrc')

source ~/.config/nvim/keymap/keymaps.vim

