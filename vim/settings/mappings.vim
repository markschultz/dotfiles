" keyboard mappings file

" leader settings
let mapleader = ","
let g:mapleader = ","

" sudo trick
cmap w!! w !sudo tee % >/dev/null<cr>

" remap semicolon to colon
map ; :
" double tap ; to get regular ; mapping
noremap ;; ;

" clear search highlight
nmap // :noh<cr>

" format the entire file
nmap <leader>fef ggVG=

" shortcut for toggling set list
nmap <leader>i :set list!<cr>

" cd to the directory containing the file in the buffer
nmap <silent> <leader>cd :lcd %:h<cr>

" create the directory containing the file in the buffer
nmap <silent> <leader>md :!mkdir -p %:p:h<cr>

" moving windows
nmap <C-j> <C-W>j
nmap <C-k> <C-W>k
nmap <C-h> <C-W>h
nmap <C-l> <C-W>l

" the first quote will close so you'll get 'foo' and this will
" put the cursor right after the quote
inoremap <C-l> <Esc>wa

" clear current search highlight by double tapping //
nmap <silent> // :nohlsearch<CR>

" use the arrows to page buffers
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>
nnoremap <up> <nop>
nnoremap <down> <nop>
"inoremap <right> <nop>
"inoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>

" when lines wrap this doent skip long ones
nnoremap j gj
nnoremap k gk
