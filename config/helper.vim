"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" About:- General helper function for editor
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

function! UdfComment()
"  let ext = tolower(expand('%:e'))
  let ext = &filetype
  if ext == 'php' || ext == 'rb' || ext == 'sh' || ext == 'py'
    silent s/^/\#/
  elseif ext == 'js'
    silent s:^:\/\/:g
  elseif ext == 'vim'
    silent s:^:\":g
  endif
endfunction

function! UdfUncomment()
  let ext = tolower(expand('%:e'))
  let ext = &filetype
  if ext == 'php' || ext == 'rb' || ext == 'sh' || ext == 'py'
    silent s/^\#//
  elseif ext == 'js'
    silent s:^\/\/::g
  elseif ext == 'vim'
    silent s:^\"::g
  endif
endfunction
"Udf is used as user define functin.It help to identify that person has defined this logic.
map <C-a> :call UdfComment()<CR>j
map <C-b> :call UdfUncomment()<CR>k
