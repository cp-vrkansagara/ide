
" Open explorer to the right side
let g:NERDTreeWinPos = "right"
"
" Close the pan once file is open
let NERDTreeQuitOnOpen=1

" Space conflicts with code folding.
" :nnoremap <space> :NERDTreeToggle<cr>

" Direct control key conflicts with different OS (i.e. xfce)
" map <A-p> :NERDTreeToggle<cr>

" noremap <leader><space> :call NERDTreeToggleInCurDir()<cr>
noremap <space> :call NERDTreeToggleInCurDir()<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>

autocmd FileType nerdtree nmap <buffer> <left> o
autocmd FileType nerdtree nmap <buffer> <right> o

function! NERDTreeToggleInCurDir()
  " If NERDTree is open in the current buffer
  if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
    exe ":NERDTreeClose"
  else
    if (expand("%:t") != '')
      exe ":NERDTreeFind"
    else
      exe ":NERDTreeToggle"
    endif
  endif
endfunction


