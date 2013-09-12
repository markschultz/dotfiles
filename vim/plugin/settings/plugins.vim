
"""python-mode




"""ctrlp

" default ctrl-p interferes with yankring
"let g:ctrlp_map = ',t'

" working path mode - the nearest ancestor that contains revision control
" directory
let g:ctrlp_working_path_mode=2

" ctrlp custom ignores
let g:ctrlp_custom_ignore={
	\ 'dir':  '\.git$\|\.hg$\|\.svn$',
	\ 'file': '\.exe$\|\.so$\|\.dll$',
	\ 'link': '',
	\ }

" for buffer search
"nnoremap <leader>b :CtrlPBuffer<CR>
nnoremap <C-b> :CtrlPBuffer<CR>


"""easytags

let g:easytags_by_filetype="~/.tags/"
let g:easytags_resolve_links=1


"""fugitive

" For fugitive.git, dp means :diffput. Define dg to mean :diffget
nnoremap <silent> ,dg :diffget<CR>
nnoremap <silent> ,dp :diffput<CR>


"""gist

let g:gist_clip_command='xclip -selection clipboard'
let g:gist_detect_filetype=1
let g:gist_get_multiplefile=1


"""gundo

map <leader>u :GundoToggle<CR>


"""pandoc

let g:pandoc_use_hard_wraps=1
let g:pandoc_auto_format=1


"""powerline

if $POWERLINE==1
	" 'fancy'/'unicode'/'compatible' symbols for powerline
	let g:Powerline_symbols = 'fancy'
else
	let g:Powerline_symbols = 'unicode'
endif
"let g:Powerline_symbols = 'compatible'


"""airline

"let g:airline_powerline_fonts = 1
let g:airline_theme = 'solarized'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
let g:airline_symbols = {}
let g:airline_symbols.paste = 'ρ'
let g:airline_symbols.whitespace = 'Ξ'
if $POWERLINE==1
    " unicode symbols
    let g:airline_symbols.branch = '⭠'
    let g:airline_symbols.readonly = '⭤'
    let g:airline_symbols.linenr = '⭡'
else
    let g:airline_symbols.linenr = '␊'
    let g:airline_symbols.branch = '⎇'
endif


"""syntastic

" mark syntax errors with :signs
let g:syntastic_enable_signs=1
" dont care about warnings
let g:syntastic_quiet_warning=0
" show error list automatically
let g:syntastic_auto_loc_list=2
" in active mode passive languages are ignored in passive mode active
" languages are active
"let g:syntastic_mode_map = { 'mode': 'active',
"						   \ 'active_filetypes': [],
"						   \ 'passive_filetypes': ['haskell'] }


"""tagbar

map <silent> <C-t> :TagbarOpenAutoClose<cr>


"""unimpaired

" Bubble single lines
nmap <C-Up> [e
nmap <C-Down> ]e

" Bubble multiple lines
vmap <C-Up> [egv
vmap <C-Down> ]egv


"""vim2hs

"disable all conceals
let g:haskell_conceal = 0


"""ZoomWin

map <leader>zw :ZoomWin<cr>


"""neco-ghc

let g:necoghc_enable_detailed_browse=1


"""python-mode

let g:pymode_rope = 0


"""ultisnips
let g:UltiSnipsExpandTrigger="<s-tab>"
let g:UltiSnipsListSnippets="<c-s-esc>"


"""supertab

"let g:SuperTabDefaultCompletionType = '<C-Tab>'


"""youcompleteme

"let g:ycm_key_list_select_completion = ['<C-Tab>','<Down>']
let g:ycm_key_list_previous_completion = ['<C-S-Tab>','<Up>']
let g:ycm_semantic_triggers =  {
  \   'c' : ['->', '.'],
  \   'objc' : ['->', '.'],
  \   'ocaml' : ['.', '#'],
  \   'cpp,objcpp' : ['->', '.', '::'],
  \   'perl' : ['->'],
  \   'php' : ['->', '::'],
  \   'cs,java,javascript,d,vim,python,perl6,scala,vb,elixir,go' : ['.'],
  \   'ruby' : ['.', '::'],
  \   'lua' : ['.', ':'],
  \   'erlang' : [':'],
  \   'fsharp' : ['.'],
  \   'haskell' : ['.'],
  \ }
let g:ycm_auto_start_csharp_server = 1
let g:ycm_cache_omnifunc = 0
