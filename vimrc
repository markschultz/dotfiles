"TODO make keybinding for :%!stylish-haskell
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
Bundle 'tpope/vim-git'
Bundle 'tpope/vim-markdown'
Bundle 'tpope/vim-dispatch'
Bundle 'bling/vim-airline'
Bundle 'timrobinson/fsharp-vim'
Bundle 'feuerbach/ariadne-vim'
Bundle 'dag/vim2hs'
Bundle 'Raimondi/delimitMate'
Bundle 'ujihisa/neco-ghc'
Bundle 'altercation/vim-colors-solarized'
Bundle 'mattn/gist-vim'
Bundle 'mattn/webapi-vim'
Bundle 'mattn/emmet-vim'
Bundle 'kien/ctrlp.vim'
Bundle 'JazzCore/ctrlp-cmatcher'
Bundle 'scrooloose/syntastic'
Bundle 'majutsushi/tagbar'
Bundle 'bitc/lushtags'
Bundle 'sjl/gundo.vim'
Bundle 'godlygeek/tabular'
Bundle 'mileszs/ack.vim'
Bundle 'klen/python-mode'
Bundle 'honza/vim-snippets'
Bundle 'elixir-lang/vim-elixir'
Bundle 'mattonrails/vim-mix'
Bundle 'terryma/vim-multiple-cursors'
Bundle 'Shougo/vimshell'
Bundle 'Shougo/neocomplete'
Bundle 'Shougo/neosnippet'
Bundle 'Shougo/vimproc'
Bundle 'eagletmt/ghcmod-vim'

"Bundle 'Valloric/YouCompleteMe'
"Bundle 'SirVer/ultisnips'
"Bundle 'rodjek/vim-puppet'
"Bundle 'Lokaltog/vim-powerline'
"Bundle 'rstacruz/sparkup'
"Bundle 'pangloss/vim-javascript'
"Bundle 'thinca/vim-quickrun'
"Bundle 'ujihisa/repl.vim'
"Bundle 'vim-scripts/Efficient-python-folding'
"Bundle 'Twinside/vim-hoogle'
"Bundle 'Shougo/neocomplcache-clang_complete'
"Bundle 'Rip-Rip/clang_complete'
"Bundle 'tomtom/tcomment_vim'
"Bundle 'javacomplete'
"Bundle 'ZoomWin'
"Bundle 'vim-scripts/syntaxhaskell.vim'
"Bundle 'kana/vim-filetype-haskell'
"Bundle 'vim-pandoc/vim-pandoc'
"Bundle 'vim-ruby/vim-ruby'
"Bundle 'sickill/vim-pasta'
"Bundle 'scrooloose/nerdtree'
"Bundle 'scrooloose/snipmate-snippets'
"Bundle 'Lokaltog/vim-easymotion'
"Bundle 'xolox/vim-easytags'
"useful for projects
"Bundle 'xolox/vim-session'
"Bundle 'lukerandall/haskellmode-vim'
"Bundle 'sjbach/lusty'
"Bundle 'chrisbra/NrrwRgn'
"Bundle 'MarcWeber/vim-addon-mw-utils'
"Bundle 'tomtom/tlib_vim'
"Bundle 'garbas/vim-snipmate'
"Bundle 'markschultz/snipmate-snippets'
"Bundle 'Twinside/vim-haskellFold'
"Bundle 'Twinside/vim-haskellConceal'
"Bundle 'indent/haskell.vim'
"Bundle 'haskell.vim'
"Bundle 'nelstrom/vim-textobj-rubyblock'
"Bundle 'kana/vim-textobj-function'
"Bundle 'kana/vim-textobj-user'
"Bundle 'kana/vim-textobj-indent'
"Bundle 'vim-scripts/csv.vim'

" vim-scripts repos
"Bundle 'FuzzyFinder'
"Bundle 'MatlabFilesEdition'
"Bundle 'YankRing.vim'
" Bundle 'clang'

" non-github repos
"Bundle 'git://git.wincent.com/command-t.git'

filetype plugin indent on " required!
syntax enable " syntax highlighting
"if filereadable(expand("~/.vim/settings/colors.vim"))
    "source ~/.vim/settings/colors.vim
"endif
" source other files
for f in split(glob('~/.vim/settings/*.vim'), '\n')
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
set showbreak="… "
set backspace=eol,start,indent " backspace config
"set whichwrap+=<,>

" folding options
"set foldmethod=indent
"set foldmethod=syntax
"set foldnestmax=10
"set nofoldenable
set foldlevelstart=99
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
set number " line numbers
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
set formatoptions-=r " dont continue comments when pushing enter
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
set tabstop=8 " tab is 4 spaces
set expandtab " replace tabs w/ spaces. insert real tab with C-v tab
set autoindent
set copyindent " copy previous indentation when autoindenting
set smartindent
set shiftwidth=4 " number of spaces for autoindenting
set smarttab " inserts tabs at beginning of line according to shiftwidth instead of tabstop
set softtabstop=4 "length of 'soft' tabs. should be the same as other tab lengths
set shiftround "indent to multiple of tab

set list
"set listchars=tab:>.,trail:.,extends:#,nbsp:. "make vim show all whitespace
set listchars=tab:»\ ,trail:·,eol:¬,
"set listchars=tab:▸\ ,eol:¬

"make the timeout shorter than the default 1000ms
set timeoutlen=400
nnoremap <F5> "=strftime("%Y-%m-%d %H:%M")<CR>P
