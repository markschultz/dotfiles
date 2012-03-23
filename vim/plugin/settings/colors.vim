
if $SOLARIZED
	color solarized
else
	color vividchalk
endif
set background=dark
"improve autocomplete menu color
highlight Pmenu ctermbg=238 gui=bold
" fix whitespace characters in solarized
highlight clear NonText
highlight NonText ctermfg=green
highlight clear SpecialKey
highlight SpecialKey ctermfg=green
highlight clear Search
highlight Search cterm=underline
