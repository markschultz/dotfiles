
set nocompatible
autocmd!
filetype off

"PATHOGEN
silent! call pathogen#helptags()
silent! call pathogen#runtime_append_all_bundles()

filetype plugin indent on "need to do this after pathogen load
syntax enable
set t_Co=256
set background=dark
colorscheme solarized

"default filetypes
set ffs=unix,dos,mac

"set autoread "reload file when its been modified from the outside
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

"general editor
set noautowrite "dont writeout when you switch buffers
set autoread "auto reload file when its changed
set ttyfast
set number
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
set wildignore=*.swp,*.bak,*.pyc,*.class
set ttymouse=xterm
set mouse=v

"search stuff
set ignorecase
set smartcase
set hlsearch
set incsearch
hi clear Search
hi Search cterm=underline

"tab stuff
set tabstop=4 "tab is 4 spaces
set autoindent "always autoindent
set copyindent "copy previous indentation when autoindenting
set si "smart indent
set shiftwidth=4 "number of spaces for autoindenting
set smarttab "inset tabs at beginning of line according to shiftwidth instead of tabstop

"filetype specifics
set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:. "make vim show all whitespace
set listchars=tab:»·,trail:·,eol:¬,
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
map <right> :bn<cr>
map <left> :bp<cr>
map <up> <nop>
map <down> <nop>


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
"TAGLIST
nmap <silent> <C-t> :TlistToggle<cr>
"COMMAND-T
nmap <silent> <C-o> :CommandT<CR>
nmap <silent> <Leader>tb :CommandTBuffer<CR>
"LUSTYJUGGLER
nmap <silent> <Leader>b :LustyJuggler<cr>

