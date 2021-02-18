
" Open explorer to the right side
let g:NERDTreeWinPos = "right"
"
" Close the pan once file is open
let NERDTreeQuitOnOpen=1

" Space conflicts with code folding.
" :nnoremap <space> :NERDTreeToggle<cr>
" map <A-p> :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
map <leader>nf :NERDTreeFind<cr>


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

" nnoremap <leader>nf :NERDTreeFind<cr>
" nnoremap <leader>nf :call NERDTreeToggleInCurDir()<cr>
nnoremap <A-p> :call NERDTreeToggleInCurDir()<cr>


