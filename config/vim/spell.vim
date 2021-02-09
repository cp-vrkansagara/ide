"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" About:- spell related configuration
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" Map <leader>ss to turn spelling on (VIM 7.0+)
":for item in ['Bad','Cap','Local','Rare']| exe "hi Spell".item| endfor " Print current value

" word not recognized
:hi SpellBad term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=Red
" word not capitalised
:hi SpellCap term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=Blue
" wrong spelling for region
:hi SpellLocal term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=DarkCyan
" rare word
:hi SpellRare term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=Magenta

autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell
map <leader>ss :setlocal spell spelllang=en_gb<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=
