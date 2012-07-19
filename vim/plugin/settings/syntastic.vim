
" mark syntax errors with :signs
let g:syntastic_enable_signs=1
" dont care about warnings
let g:syntastic_quiet_warning=0
" show error list automatically
let g:syntastic_auto_loc_list=2
" in active mode passive languages are ignored in passive mode active
" languages are active
let g:syntastic_mode_map = { 'mode': 'active',
						   \ 'active_filetypes': [],
						   \ 'passive_filetypes': ['haskell'] }
