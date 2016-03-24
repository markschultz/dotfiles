set nocompatible " be iMproved
filetype off     " required!

set rtp+=~/.vim/bundle/neobundle.vim/
"set rtp+=~/.vim/bundle/fsharpbinding-vim/
call neobundle#begin(expand('~/.vim/bundle/'))
NeoBundleFetch 'Shougo/neobundle.vim'

NeoBundle 'tpope/vim-fugitive'
NeoBundle 'tpope/vim-surround'
NeoBundle 'tpope/vim-repeat'
NeoBundle 'tpope/vim-vividchalk'
NeoBundle 'tpope/vim-unimpaired'
NeoBundle 'tpope/vim-endwise'
NeoBundle 'tpope/vim-git'
NeoBundle 'tpope/vim-markdown'
NeoBundle 'tpope/vim-dispatch'
NeoBundle 'tpope/vim-commentary'
NeoBundle 'bling/vim-airline'
NeoBundle 'timrobinson/fsharp-vim'
"NeoBundle 'fsharp/fsharpbinding', {'build': {'unix': 'make -C vim install'}}
NeoBundle 'Raimondi/delimitMate'
NeoBundle 'altercation/vim-colors-solarized'
NeoBundle 'michaeljsmith/vim-indent-object'
"NeoBundle 'mattn/gist-vim'
"NeoBundle 'mattn/webapi-vim'
NeoBundle 'mattn/emmet-vim'
"NeoBundle 'kien/ctrlp.vim'
"NeoBundle 'JazzCore/ctrlp-cmatcher'
NeoBundle 'scrooloose/syntastic'
NeoBundle 'majutsushi/tagbar'
"NeoBundle 'bitc/lushtags'
"NeoBundle 'marijnh/tern_for_vim', {'build': {'unix': 'npm install'}}
NeoBundle 'sjl/gundo.vim'
NeoBundle 'jgdavey/tslime.vim'
NeoBundle 'int3/vim-extradite'
NeoBundle 'godlygeek/tabular'
NeoBundle 'klen/python-mode'
NeoBundle 'elixir-lang/vim-elixir'
NeoBundle 'mattonrails/vim-mix'
NeoBundle 'terryma/vim-multiple-cursors'
NeoBundle 'Shougo/vimshell'
NeoBundle 'vim-scripts/gitignore'
NeoBundle 'Shougo/neocomplete'
NeoBundle 'Shougo/neosnippet'
NeoBundle 'Shougo/neosnippet-snippets'
NeoBundle 'honza/vim-snippets'
NeoBundle 'Shougo/unite.vim'
NeoBundle 'Shougo/vimfiler.vim'
NeoBundle 'OmniSharp/omnisharp-vim', {'autoload': {'filetypes': ['cs']}, 'build': {'unix': 'cd omnisharp-roslyn; ./build.sh'}}
NeoBundle 'Shougo/vimproc', {'build': {'unix': 'make -f make_unix.mak', 'windows': 'tools\\update-dll-mingw', 'mac': 'make -f make_mac.mak'}}
"
" Haskell
NeoBundle 'nbouscal/vim-stylish-haskell'
NeoBundle 'neovimhaskell/haskell-vim'
NeoBundle 'eagletmt/ghcmod-vim'
"NeoBundle 'int3/ghcmod-vim', 'ghc-modi'
NeoBundle 'eagletmt/unite-haddock'
NeoBundle 'eagletmt/neco-ghc'
NeoBundle 'pbrisbin/vim-syntax-shakespeare'
NeoBundle 'racer-rust/vim-racer'
NeoBundle 'rust-lang/rust.vim'
"NeoBundle 'dag/vim2hs'

"javascript/angular
"NeoBundle 'burnettk/vim-angular'

"NeoBundle 'sjl/clam.vim'
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

call neobundle#end()

filetype plugin indent on " required!
NeoBundleCheck
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
set noshowmatch "disable automatic brace matching

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
"set timeoutlen=400
nnoremap <F5> "=strftime("%Y-%m-%d %H:%M")<CR>P

"for hothasktags
"set iskeyword+=.
set tags=tags;/,codex.tags;/

function! DeleteTrailingWS()
    exe "normal mz"
    %s/\s\+$//ge
    exe "normal `z"
endfunction
