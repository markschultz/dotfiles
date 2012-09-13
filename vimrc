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
Bundle 'tpope/vim-vividchalk'
Bundle 'tpope/vim-unimpaired'
Bundle 'tpope/vim-endwise'
Bundle 'Lokaltog/vim-powerline'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'xolox/vim-easytags'
"useful for projects
"Bundle 'xolox/vim-session'
"Bundle 'lukerandall/haskellmode-vim'
Bundle 'dag/vim2hs'
Bundle 'Raimondi/delimitMate'
Bundle 'thinca/vim-quickrun'
Bundle 'Shougo/vimproc'
Bundle 'Shougo/vimshell'
Bundle 'ujihisa/repl.vim'
Bundle 'Twinside/vim-hoogle'
Bundle 'Shougo/neocomplcache'
Bundle 'Shougo/neocomplcache-snippets-complete'
Bundle 'Shougo/neocomplcache-clang_complete'
Bundle 'ujihisa/neco-ghc'
"Bundle 'SirVer/ultisnips'
Bundle 'altercation/vim-colors-solarized'
"Bundle 'rstacruz/sparkup'
Bundle 'mattn/gist-vim'
"required for gist-vim
Bundle 'mattn/webapi-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'scrooloose/syntastic'
"Bundle 'ervandew/supertab'
"Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/snipmate-snippets'
Bundle 'tomtom/tcomment_vim'
Bundle 'godlygeek/tabular'
Bundle 'majutsushi/tagbar'
Bundle 'bitc/lushtags'
Bundle 'sjl/gundo.vim'
Bundle 'sickill/vim-pasta'
"Bundle 'mileszs/ack.vim'
"Bundle 'sjbach/lusty'
"Bundle 'chrisbra/NrrwRgn'

"new snipmate & dependencies
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
"Bundle 'honza/snipmate-snippets'
"Bundle 'garbas/vim-snipmate'
"Bundle 'markschultz/snipmate-snippets'

" filetype git repos
Bundle 'Twinside/vim-haskellFold'
"Bundle 'Twinside/vim-haskellConceal'
"Bundle 'indent/haskell.vim'
"Bundle 'haskell.vim'
Bundle 'kana/vim-filetype-haskell'
Bundle 'vim-pandoc/vim-pandoc'
Bundle 'tpope/vim-git'
Bundle 'pangloss/vim-javascript'
Bundle 'vim-ruby/vim-ruby'
"Bundle 'nelstrom/vim-textobj-rubyblock'
"Bundle 'kana/vim-textobj-function'
" for haskell
"Bundle 'kana/vim-textobj-user'
"Bundle 'kana/vim-textobj-indent'
Bundle 'Rip-Rip/clang_complete'
"Bundle 'vim-scripts/csv.vim'

" vim-scripts repos
"Bundle 'FuzzyFinder'
"Bundle 'MatlabFilesEdition'
"Bundle 'YankRing.vim'
" Bundle 'clang'
Bundle 'javacomplete'
Bundle 'ZoomWin'

" non-github repos
"Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on " required!
syntax enable " syntax highlighting

" source other files
" if filereadable(expand("~/.vim/mappings.vim"))
" 	source ~/.vim/mappings.vim
" endif
for f in split(glob('~/.vim/plugin/settings/*.vim'), '\n')
	exe 'source' f
endfor

set laststatus=2 " statusline is 2 rows
set t_Co=256

" default filetypes
set ffs=unix,dos,mac
set encoding=utf-8

set linebreak " linebreak in editor
"set textwidth=500 " max textwidth
set wrap " wrap lines
set showbreak=…\ 
set backspace=eol,start,indent " backspace config
"set whichwrap+=<,>

" folding options
set foldmethod=indent
"set foldmethod=syntax
"set foldnestmax=10
set nofoldenable
"set foldlevel=1

" omni set - dunno if this is necessary or what it really does
"set completefunc=syntaxcomplete#Complete
"set omnifunc=syntaxcomplete#Complete
set completeopt=preview,menu,menuone " add ,preview for scratch preview
set wildmenu
set wildmode=longest,list,full
"set complete=.,t,w

" genereal editor settings
set noshowmode " dont show current mode because displayed in bar already
set noautowrite " dont writeout when you switch buffers
set colorcolumn=80 " 80 char 'column'
"set cursorline " highlight current line
set autoread " reload file when its been modified from the outside
set ttyfast
set showcmd " show last cmd in bottom right corner
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
set undodir=~/.vim/_undo//
set backupdir=~/.vim/_backup//
set directory=~/.vim/_temp//
set viewdir=~/.vim/_view//
set wildignore+=*.o,*.out,*.obj,.git,*.rbc,*.class,.svn,*.gem,*.pyc
set wildignore+=*.zip,*.tar.gz,*.tar.bz2,*.rar,*.tar.xz
set wildignore+=*.swp,*~,._*
set formatoptions-=o " dont continue comments when pushing o/O
set mouse=n
"set ttymouse=xterm2
set pastetoggle=<F2>
set clipboard=unnamedplus " use system clipboard by default

" search settings
set ignorecase
set smartcase
set hlsearch
set incsearch
set sm "automatic brace matching

" tab settings
set tabstop=4 " tab is 4 spaces
"set expandtab " replace tabs w/ spaces. insert real tab with C-v tab
set autoindent
set copyindent " copy previous indentation when autoindenting
set smartindent
set shiftwidth=4 " number of spaces for autoindenting
set smarttab " inserts tabs at beginning of line according to shiftwidth instead of tabstop
set softtabstop=4 "length of 'soft' tabs. should be the same as other tab lengths

set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:. "make vim show all whitespace
set listchars=tab:»\ ,trail:·,eol:¬,
"set listchars=tab:▸\ ,eol:¬

"make the timeout shorter than the default 1000ms
set timeoutlen=400
