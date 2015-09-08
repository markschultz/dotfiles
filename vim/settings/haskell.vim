map <leader>tg :!codex update --force<CR>:call system("git hscope -X TemplateHaskell")<CR><CR>:call LoadHscope()<CR>

set csprg=hscope
set csto=1
set cst
set csverb

nnoremap <silent> <C-\> :cs find c <C-R>=expand("<cword>")<CR><CR>

function! LoadHscope()
    let db = findfile("hscope.out", ".;")
    if (!empty(db))
        let path = strpart(db, 0, match(db, "/hscope.out$"))
        set nocscopeverbose " suppress 'duplicate connection' error
        exe "cs add " . db . " " . path
        set cscopeverbose
    endif
endfunction
au BufEnter /*.hs call LoadHscope()

