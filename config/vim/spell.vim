"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" About:- spell related configuration
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_gb
autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en_gb

" :set spellfile=$HOME/.vim/spell/en.utf-8.add

map <leader>ss :setlocal spell spelllang=en_gb<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

:hi  SpellBad term=reverse ctermbg=9 gui=undercurl guisp=Red
:hi  SpellCap term=reverse ctermbg=12 gui=undercurl guisp=Blue
:hi  SpellLocal term=underline ctermbg=14 gui=undercurl guisp=Cyan
:hi  SpellRare term=reverse ctermbg=13 gui=undercurl guisp=Magenta

" Map <leader>ss to turn spelling on (VIM 7.0+)
":for item in ['Bad','Cap','Local','Rare']| exe "hi Spell".item| endfor " Print current value

" word not recognized
" ":hi SpellBad term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=Red
" word not capitalised
" ":hi SpellCap term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=Blue
" wrong spelling for region
" ":hi SpellLocal term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=DarkCyan
" rare word
" ":hi SpellRare term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=Magenta
