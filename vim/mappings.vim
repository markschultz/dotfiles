" keyboard mappings file

" leader settings
let mapleader = ","
let g:mapleader = ","

" sudo trick
cmap w!! w !sudo tee % >/dev/null<cr>

" format the entire file
nmap <leader>fef ggVG=

" shortcut for toggling set list
nmap <leader>i :set list!<cr>

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<cr>

" create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<cr>

" moving windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

" use the arrows to page buffers
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <right> <nop>
inoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" when lines wrap this doent skip long ones
nnoremap j gj
nnoremap k gk

" Plugin configs
"map <silent> <C-u> :GundoToggle<cr>
map <leader>u :GundoToggle<cr>
map <leader>/ <plug>NERDCommenterToggle<cr>
map <silent> <C-t> :TagbarOpenAutoClose<cr>
":TagbarToggle<cr>
map <leader>zw :ZoomWin<cr>
