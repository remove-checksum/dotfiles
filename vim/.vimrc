scriptencoding utf-8

let skip_defaults_vim=1
set nocompatible

set autoindent
set autowrite
set number
set ruler
set showmode

" Indent settings
set tabstop=2
set softtabstop=2
set shiftwidth=2
set smartindent
set smarttab
set expandtab

if v:version >= 800
        set nofixendofline
        set listchars=space:*,trail:*,nbsp:*,extends:>,precedes:<,tab:\|>
        set foldmethod=manual
        set nofoldenable
endif

set textwidth=80
set norelativenumber
set noswapfile
set backspace=indent,eol,start
set incsearch
set icon

" Disable backup
set nobackup
set noswapfile
set nowritebackup

" Search highlight
set nohlsearch
set incsearch
set linebreak

"set shortmess=aoOtTI

set viminfo='20,<1000,s1000

" file viewer
let g:netrw_banner=0

let &t_SI = "\e[6 q"
let &t_EI = "\e[2 q"

let g:loaded_matchparen=1
set noshowmatch
set wrapscan
set history=550
syntax enable
filetype plugin on
set ttyfast
set wildmenu
set ignorecase

"if filereadable(expand("~/.vim/autoload/plug.vim"))
"call plug#begin()
"  Plug 'sheerun/vim-polyglot'
"  Plug 'tpope/vim-fugitive'
"  Plug 'tpope/vim-surround'
"  Plug 'Yggdroot/indentLine'
"  Plug 'haystackandroid/carbonized'
"  call plug#end()
"endif

"let g:intentLine_colorTerm = 239
let g:indentLine_char = '·'

" Keymaps
map <F1> :set number!<CR> :set relativenumber!<CR>
set pastetoggle=<F3>
map <F4> :set list!<CR>
nnoremap Q <Nop>
