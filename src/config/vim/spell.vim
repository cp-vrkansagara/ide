"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" About:- spell related configuration
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
set spell spelllang=en_gb
set spellfile=~/.vim/spell/en.utf-8.add

" Enable spell check
nnoremap <leader>ss :setlocal spell spelllang=en_gb<cr>

" Disable spell check
nnoremap <leader>ss! :set nospell<cr>

nnoremap <leader>sn ]s
nnoremap <leader>sp [s
nnoremap <leader>sa zg
nnoremap <leader>s? z=

" Map <leader>ss to turn spelling on (VIM 7.0+)
":for item in ['Bad','Cap','Local','Rare']| exe "hi Spell".item| endfor " Print current value

hi  SpellBad term=reverse ctermbg=9  ctermbg=0 gui=undercurl guisp=Red
hi  SpellCap term=reverse ctermbg=12 ctermbg=0 gui=undercurl guisp=Blue
hi  SpellLocal term=underline ctermbg=14 ctermbg=0 gui=undercurl guisp=Cyan
hi  SpellRare term=reverse ctermbg=13 ctermbg=0 gui=undercurl guisp=Magenta

" File type specific autocmd
if exists("spellfile")
	autocmd BufRead,BufNewFile *.md setlocal spell spelllang=en_gb
	autocmd BufRead,BufNewFile *.txt setlocal spell spelllang=en_gb
endif

" Autocomplete with dictionary words when spell check is on
set complete+=kspell
