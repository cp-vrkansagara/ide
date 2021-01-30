" ************** GNU C/C++ Language specific setting START **************
" run file with gnu compiler
:autocmd FileType c noremap <C-M> :w!<CR>:!/usr/bin/gcc % -o /tmp/test.out && clear && /tmp/test.out<CR>