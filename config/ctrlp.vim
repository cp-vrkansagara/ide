"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File name :- ctrlp.vim
" About:- Active fork of kien/ctrlp.vim—Fuzzy file, buffer, mru, tag, etc finder.
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let g:ctrlp_map = '<c-p>'
let g:ctrlp_cmd = 'CtrlP'

" Quickly find and open a file in the CWD
let g:ctrlp_map = '<C-f>'

" Quickly find and open a recently opened file
map <leader>f :MRU<CR>

" Quickly find and open a buffer
map <leader>b :CtrlPBuffer<cr>