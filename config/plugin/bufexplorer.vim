"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File name :- bufexplorer.zip.vim
" About:- Buffer Explorer / Browser
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Open bufexplorer to see and manage the current buffers (<leader>o):
map <leader>o :BufExplorer<cr>

" Close current buffer (DANGER)
nnoremap <leader>bd :bufdo bd
" Close all buffers (DANGER)
nnoremap <leader>ba :bufdo bd!

" " Close current buffer
" map <leader>bd :Bclose<cr>

" " Close all buffers
" map <leader>ba :1,1000 bd!<cr>
