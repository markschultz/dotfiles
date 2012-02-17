set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
Bundle 'gmarik/vundle'

" My installed bundles

" github repos
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-repeat'
Bundle 'Lokaltog/vim-powerline'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'altercation/vim-colors-solarized'
Bundle 'mattn/zencoding-vim'
Bundle 'mattn/gist-vim'
Bundle 'msanders/snipmate.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'ervandew/supertab'
Bundle 'scrooloose/syntastic'
Bundle 'scrooloose/nerdtree'
Bundle 'scrooloose/nerdcommenter'
Bundle 'scrooloose/snipmate-snippets'
Bundle 'majutsushi/tagbar'
Bundle 'vim-scripts/ZoomWin'
Bundle 'sjl/gundo.vim'
Bundle 'sickill/vim-pasta'
Bundle 'mileszs/ack.vim'
"Bundle 'sjbach/lusty'
"Bundle 'chrisbra/NrrwRgn'

" filetype git repos
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-git'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-scripts/csv.vim'

" vim-scripts repos
"Bundle 'FuzzyFinder'
"Bundle 'MatlabFilesEdition'

" non-github repos
"Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on " required!
syntax enable " syntax highlighting

" source other files
if filereadable(expand("~/.vim/mappings.vim"))
	source ~/.vim/mappings.vim
endif
if filereadable(expand("~/.vim/helpfunctions.vim"))
	source ~/.vim/helpfunctions.vim
endif

set laststatus=2 " statusline is 2 rows
set t_Co=256
let g:gist_clip_command = 'xclip -selection clipboard'
let g:gist_detect_filetype = 1
let g:Powerline_symbols = 'fancy' " fancy symbols for powerline
color solarized
set background=dark

" default filetypes
set ffs=unix,dos,mac
set encoding=utf-8

set linebreak " linebreak in editor
set textwidth=500 " max textwidth
set wrap " wrap lines
set backspace=eol,start,indent " backspace config
"set whichwrap+=<,>

" folding options
"set foldmethod=indent
set foldmethod=syntax
"set foldnestmax=10
"set nofoldenable
"set foldlevel=1

" save and load fold automatically
augroup vimrcAutoView
    autocmd!
    autocmd BufWritePost,BufLeave,WinLeave ?* if MakeViewCheck() | mkview | endif
    autocmd BufWinEnter ?* if MakeViewCheck() | silent loadview | endif
augroup end

" genereal editor settings
set noautowrite " dont writeout when you switch buffers
set colorcolumn=80 " 80 char 'column'
set cursorline " highlight current line
set autoread " reload file when its been modified from the outside
set ttyfast
"set number " line numbers
set relativenumber " relative line numbers
set ruler
set so=5 " scroll lines to keep above and below the cursor
set hidden " means you dont have to save buffers when you do a :e
set lazyredraw
set noerrorbells
set visualbell
set nobackup
set writebackup
set swapfile
set title
set history=1000
set undolevels=1000
set undoreload=10000
set undofile
"test comment
set undodir=~/.vim/_undo//
set backupdir=~/.vim/_backup//
set directory=~/.vim/_temp//
set viewdir=~/.vim/_view//
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem,*.pyc
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.swp,*~,._*
set formatoptions-=o " dont continue comments when pushing o/O
set mouse=a
set ttymouse=xterm2
set pastetoggle=<F2>

" search settings
set ignorecase
set smartcase
set hlsearch
set incsearch
set sm
hi clear NonText
hi NonText ctermfg=green
hi clear SpecialKey
hi SpecialKey ctermfg=green
hi clear Search
hi Search cterm=underline

" tab settings
set tabstop=4 " tab is 4 spaces
"set expandtab " replace tabs w/ spaces. insert real tab with C-v tab
set autoindent
set copyindent " copy previous indentation when autoindenting
set smartindent
set shiftwidth=4 " number of spaces for autoindenting
set smarttab " inserts tabs at beginning of line according to shiftwidth instead of tabstop

set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:. "make vim show all whitespace
set listchars=tab:»\ ,trail:·,eol:¬,

" special markdown function
function! s:setupWrapping()
	set wrap
	set linebreak
	set textwidth=72
	set nolist
endfunction
" do some filetype stuff
if has ('autocmd')
	au BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,config.ru,*.rake} set ft=ruby
	au BufRead,BufNewFile *.{md,markdown,mdown,mkd,mkdn,txt} setf markdown | call s:setupWrapping()
	au BufRead,BufNewFile *.json set ft=javascript
	"au FileType markdown set wrap set linebreak set textwidth=72 set nolist
	au FileType make set noexpandtab
	au FileType python set softtabstop=4 tabstop=4 shiftwidth=4 textwidth=79
	autocmd! bufwritepost .vimrc source ~/.vimrc " when vimrc is saved, reload it
	autocmd filetype svn, *commit* setlocal spell
	autocmd BufReadPost fugitive://* set bufhidden=delete
	autocmd BufReadPost fugitive://*
	 \ if fugitive#buffer().type() =~# '^\%(tree\|blob\)$' |
	 \ 	nnoremap <buffer> .. :edit %:h<cr> |
	 \ endif
endif

