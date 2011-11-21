
set nocompatible
autocmd!
filetype off

"PATHOGEN
silent! call pathogen#runtime_append_all_bundles()
silent! call pathogen#helptags()

"save and load fold automatically
"autocmd BufWinLeave *.* mkview
"autocmd BufWinEnter *.* silent loadview

"set viewoptions-=options
"augroup vimrc
"    autocmd BufWritePost *
"    \   if expand('%') != '' && &buftype !~ 'nofile'
"    \|      mkview
"    \|  endif
"    autocmd BufRead *
"    \   if expand('%') != '' && &buftype !~ 'nofile'
"    \|      silent loadview
"    \|  endif
"augroup END

let g:skipview_files = [
		\ '[EXAMPLE PLUGIN BUFFER]'
		\ ]
function! MakeViewCheck()
	if has('quickfix') && &buftype =~ 'nofile'
		" Buffer is marked as not a file
		return 0
	endif
	if empty(glob(expand('%:p')))
		" File does not exist on disk
		return 0
	endif
	if len($TEMP) && expand('%:p:h') == $TEMP
		" We're in a temp dir
		return 0
	endif
	if len($TMP) && expand('%:p:h') == $TMP
		" Also in temp dir
		return 0
	endif
	if index(g:skipview_files, expand('%')) >= 0
		" File is in skip list
		return 0
	endif
	return 1
endfunction
augroup vimrcAutoView
	autocmd!
	" Autosave & Load Views.
	autocmd BufWritePost,BufLeave,WinLeave ?* if MakeViewCheck() | mkview | endif
	autocmd BufWinEnter ?* if MakeViewCheck() | silent loadview | endif
augroup end

filetype plugin indent on "need to do this after pathogen load
syntax enable
set t_Co=256
set background=dark
colorscheme solarized

"default filetypes
set ffs=unix,dos,mac
set encoding=utf-8

set autoread "reload file when its been modified from the outside
au FocusLost * :wa
set lbr
set tw=500
set wrap "wrap lines
"backspace config
set backspace=eol,start,indent
set whichwrap+=<,>

let mapleader = ","
let g:mapleader = ","

"fast editing of the .vimrc
map <leader>e :e! ~/.vimrc<cr>

"when vimrc is edited, reload it
autocmd! bufwritepost .vimrc source ~/.vimrc

"folding options
"set foldmethod=indent
set foldmethod=syntax
"set foldnestmax=10
"set nofoldenable
"set foldlevel=1

"general editor
set noautowrite "dont writeout when you switch buffers
set colorcolumn=80 "80 char 'column'
set autoread "auto reload file when its changed
set ttyfast
"set number
set relativenumber "amazing feature...
set ruler
set so=5 "set 5 line to the cursors when moving vertical
set hidden "means you dont have to save buffers when you do a :e
set lazyredraw
set noerrorbells
set visualbell
set nobackup "no backup files
set nowb
set noswapfile
set title "change terminals title
set history=1000 "1000 levels of search and command history
set undolevels=1000 "now i can undo 1000 times
set undofile
set undodir=/tmp/undo
set wildignore=*.swp,*.bak,*.pyc,*.class
set ttymouse=xterm2
"set mouse=v
set pastetoggle=<F2>

"search stuff
set ignorecase
set smartcase
set hlsearch
set incsearch
set sm
hi clear NonText "clears highlighting for eol and tab chars and then adds green color
hi NonText ctermfg=green
hi clear SpecialKey
hi SpecialKey ctermfg=green
hi clear Search
hi Search cterm=underline

"tab stuff
set tabstop=4 "tab is 4 spaces
set expandtab "replace tabs w/ spaces. insert real tab with C-v tab
set autoindent "always autoindent
set copyindent "copy previous indentation when autoindenting
set smartindent "smart indent
set shiftwidth=4 "number of spaces for autoindenting
set smarttab "inset tabs at beginning of line according to shiftwidth instead of tabstop

"filetype specifics
set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:. "make vim show all whitespace
set listchars=tab:»\ ,trail:·,eol:¬,
if has ('autocmd')
	autocmd filetype python set expandtab
"	autocmd filetype html,xml set listchars-=tab:>.
endif

"paste toggle
set pastetoggle=<F2>

"sudo forgetting to do sudo before editing
cmap w!! w !sudo tee % >/dev/null<cr>

"moving windows
map <C-j> <C-W>j
map <C-k> <C-W>k
map <C-h> <C-W>h
map <C-l> <C-W>l

"use the arrows to page buffers
nnoremap <right> :bn<cr>
nnoremap <left> :bp<cr>
nnoremap <up> <nop>
nnoremap <down> <nop>
inoremap <right> <nop>
inoremap <left> <nop>
inoremap <up> <nop>
inoremap <down> <nop>


"make ; work like :
nnoremap ; :
"when lines wrap this doesnt skip long ones
nnoremap j gj
nnoremap k gk
nmap <silent> ,/ :nohlsearch<CR>
cmap w!! w !sudo tee % >/dev/null


"STATUSLINE
" Always hide the statusline
set laststatus=2
set cmdheight=2

" Format the statusline
"set statusline=\ %{HasPaste()}%F%m%r%h\ %w\ \ CWD:\ %r%{CurDir()}%h\ \ \ Line:\ %l/%L:%c
"
" jamessan's
set statusline=   " clear the statusline for when vimrc is reloaded
set statusline+=%-3.3n\                      " buffer number
set statusline+=%f\                          " file name
set statusline+=%h%m%r%w                     " flags
set statusline+=[%{strlen(&ft)?&ft:'none'},  " filetype
set statusline+=%{strlen(&fenc)?&fenc:&enc}, " encoding
set statusline+=%{&fileformat}]              " file format
set statusline+=%=                           " right align
set statusline+=%{synIDattr(synID(line('.'),col('.'),1),'name')}\  "highlight
set statusline+=%b,0x%-8B\                   " current char
set statusline+=%-14.(%c%V,%l/%L%)\ %<%P        " offset



"PLUGINS

"BUFEXPLORER
"nmap <leader>b :BufExplorer<cr>
"NERDTREE
nmap <silent> <Leader>t :NERDTreeToggle<cr>
"TAGBAR
nmap <silent> <C-t> :TagbarToggle<cr>
"COMMAND-T
nmap <silent> <C-o> :CommandT<CR>
nmap <silent> <Leader>tb :CommandTBuffer<CR>
"LUSTYJUGGLER
nmap <silent> <Leader>b :LustyJuggler<cr>
"GUNDO
nnoremap <silent> <C-u> :GundoToggle<cr>
