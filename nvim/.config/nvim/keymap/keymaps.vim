" Seamlessly treat visual lines as actual lines when moving around.
noremap j gj
noremap k gk
noremap <Down> gj
noremap <Up> gk
inoremap <Down> <C-o>gj
inoremap <Up> <C-o>gk

" Navigate around splits with a single key combo.
"nnoremap <C-l> <C-w><C-l>
"nnoremap <C-h> <C-w><C-h>
"nnoremap <C-k> <C-w><C-k>
"nnoremap <C-j> <C-w><C-j>

" Cycle through splits.
nnoremap <S-Tab> <C-w>w

" Open buffer in new vertical split
nnoremap <Leader>vb :ls<CR>:vertical sb<space>

" Prevent x and the delete key from overriding what's in the clipboard.
noremap x "_x
noremap X "_x
noremap <Del> "_x

" Prevent selecting and pasting from overwriting what you originally copied.
xnoremap p pgvy

" Edit Vim config file in a new tab.
map <Leader>ev :tabnew $MYVIMRC<CR>

" Toggle visually showing all whitespace characters.
nnoremap <F7> :set list!<CR>
inoremap <F7> <C-o>:set list!<CR>

" Move 1 more lines up or down in normal and visual selection modes.
nnoremap <C-M-k> :m .-2<CR>==
nnoremap <C-M-j> :m .+1<CR>==
"vnoremap <C-M-k> :m '<-2<CR>gv=gv
"vnoremap <C-M-j> :m '>+1<CR>gv=gv

" Toggle display invisible characters
noremap <F5> :set list!<CR>
inoremap <F5> <C-o>:set list!<CR>
cnoremap <F5> <C-c>:set list!<CR>
