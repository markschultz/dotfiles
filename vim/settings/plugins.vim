
"""ctrlp

" default ctrl-p interferes with yankring
"let g:ctrlp_map = ',t'
let g:ctrlp_cmd = 'CtrlPMixed'

" use external matcher for speed and better fuzzy
"let g:ctrlp_match_func = {'match' : 'matcher#cmatch'}

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
nnoremap <silent> <leader>rdg :diffget<CR>
nnoremap <silent> <leader>dp :diffput<CR>


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
"let g:airline_theme = 'solarized'
let g:airline_left_sep = ''
let g:airline_right_sep = ''
"let g:airline_symbols = {}
"let g:airline_symbols.paste = 'ρ'
"let g:airline_symbols.space = ' '
"let g:airline_symbols.whitespace = 'Ξ'
if $POWERLINE==1
    " unicode symbols
"    let g:airline_symbols.branch = '⭠'
"    let g:airline_symbols.readonly = '⭤'
"    let g:airline_symbols.linenr = '⭡'
else
"    let g:airline_symbols.linenr = '␊'
"    let g:airline_symbols.branch = '⎇'
endif


"""syntastic

" mark syntax errors with :signs
let g:syntastic_enable_signs=1
" dont care about warnings
let g:syntastic_quiet_messages={'level':'warnings'}
" show error list automatically
let g:syntastic_auto_loc_list=1
let g:syntastic_check_on_wq=0
"let g:syntastic_haskell_checkers=['hdevtools', 'hlint']
" in active mode passive languages are ignored in passive mode active
" languages are active
"let g:syntastic_mode_map = { 'mode': 'active',
"						   \ 'active_filetypes': [],
"						   \ 'passive_filetypes': ['haskell'] }


"""tagbar

map <silent> <C-t> :TagbarOpenAutoClose<cr>
let g:tagbar_type_haskell = {
    \ 'ctagsbin'  : 'hasktags',
    \ 'ctagsargs' : '-x -c -o-',
    \ 'kinds'     : [
        \  'm:modules:0:1',
        \  'd:data: 0:1',
        \  'd_gadt: data gadt:0:1',
        \  't:type names:0:1',
        \  'nt:new types:0:1',
        \  'c:classes:0:1',
        \  'cons:constructors:1:1',
        \  'c_gadt:constructor gadt:1:1',
        \  'c_a:constructor accessors:1:1',
        \  'ft:function types:1:1',
        \  'fi:function implementations:0:1',
        \  'o:others:0:1'
    \ ],
    \ 'sro'        : '.',
    \ 'kind2scope' : {
        \ 'm' : 'module',
        \ 'c' : 'class',
        \ 'd' : 'data',
        \ 't' : 'type'
    \ },
    \ 'scope2kind' : {
        \ 'module' : 'm',
        \ 'class'  : 'c',
        \ 'data'   : 'd',
        \ 'type'   : 't'
    \ }
\ }

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


"""ghcmod

map <leader>gt :GhcModType<cr>
map <leader>gc :GhcModTypeClear<cr>
map <leader>gi :GhcModTypeInsert<cr>
let g:ghcmod_should_use_ghc_modi = 1

"""vimfiler

let g:vimfiler_as_default_explorer = 1


"""unite

let g:unite_source_history_yank_enable = 1
call unite#filters#matcher_default#use(['matcher_fuzzy'])
nnoremap <leader>y :<C-u>Unite -buffer-name=yank history/yank<cr>
nnoremap <C-p> :<C-u>Unite -buffer-name=files -start-insert file_rec/async:!<cr>
nnoremap <leader>/ :<C-u>Unite grep:.<cr>
nnoremap <leader>b :Unite -buffer-name=buffers -quick-match buffer<cr>
nnoremap <leader>hh :Unite haddock<cr>
if executable('ack')
    let g:unite_source_grep_command = 'ack'
    let g:unite_source_grep_default_opts = '-i --no-heading --no-color -k -H'
    let g:unite_source_grep_recursive_opt = ''
endif
"call unite#custom_default_action('haddock', 'browse_remote')
let g:unite_source_haddock_browser = 'firefox-beta-bin'



"""fsharpbinding

let g:fsharpbinding_debug = 1


"""tslime

vmap <silent> <Leader>rs <Plug>SendSelectionToTmux
nmap <silent> <Leader>rs <Plug>NormalModeSendToTmux
nmap <silent> <Leader>rv <Plug>SetTmuxVars


"""racer

let g:racer_cmd = "~/.vim/bundle/racer/target/release/racer"


"""omnisharp

let g:OmniSharp_server_type = 'roslyn'
