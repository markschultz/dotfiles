" do some filetype stuff
autocmd FileType haskell map <buffer> <Leader>h :Hoogle
autocmd FileType haskell map <buffer> <Leader>hc :HoogleClose<CR>
autocmd FileType haskell map <buffer> <Leader>hl :HoogleLine<CR>
"autocmd FileType haskell compiler ghc
autocmd FileType haskell setlocal expandtab tabstop=4 shiftwidth=4 softtabstop=0
autocmd FileType haskell setlocal foldenable
autocmd FileType css setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType java setlocal omnifunc=javacomplete#Complete completefunc=javacomplete#CompleteParamsInfo
autocmd FileType xml setlocal omnifunc=xmlcomplete#CompleteTags
autocmd FileType ruby,eruby setlocal omnifunc=rubycomplete#Complete
autocmd FileType ruby,eruby let g:rubycomplete_buffer_loading=1
autocmd FileType ruby,eruby let g:rubycomplete_rails=1
autocmd FileType ruby,eruby let g:rubycomplete_classes_in_global=1
autocmd FileType python setlocal omnifunc=pythoncomplete#Complete
autocmd FileType pandoc setlocal spell spelllang=en_us
autocmd FileType tex setlocal spell spelllang=en_us
autocmd FileType text setlocal spell spelllang=en_us
autocmd FileType make setlocal noexpandtab
autocmd FileType python setlocal autoindent softtabstop=4 tabstop=8 shiftwidth=4 textwidth=79 expandtab
autocmd FileType svn, *commit*, *COMMIT* setlocal spell spelllang=en_us
"autocmd FileType haskell compiler ghc
autocmd BufRead,BufNewFile {Gemfile,Rakefile,Vagrantfile,Thorfile,Procfile,config.ru,*.rake} set ft=ruby
autocmd BufRead,BufNewFile *.json setlocal ft=javascript
autocmd BufWritePost *vimrc source ~/.vimrc " when vimrc is saved, reload it
autocmd BufReadPost fugitive://* set bufhidden=delete

augroup filetypedetect
	"mail
	autocmd BufRead,BufNewFile *mutt-*		setfiletype mail
augroup END
autocmd FileType mail setlocal spell spelllang=en_us
autocmd FileType mail nmap <F3> gqap
autocmd FileType mail nmap <F4> gqqj
autocmd FileType mail nmap <F5> kgqj
autocmd FileType mail map! <F3> <ESC>gqapi
autocmd FileType mail map! <F4> <ESC>gqqji
autocmd FileType mail map! <F5> <ESC>kgqji
