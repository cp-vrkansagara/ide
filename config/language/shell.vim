"https://stackoverflow.com/questions/15449591/vim-execute-current-file
" nnoremap <F9> :!chmod +x % <CR>:!%:p<CR>
" nnoremap <leader>r :!%:p

" run file with PHP CLI (CTRL-m)
" ":autocmd FileType sh noremap <C-m> :w!<CR>:!chmod +x %<CR>:! clear && sh %<CR>
:autocmd FileType sh noremap <C-m> :w!<CR>:! clear<CR>:! %:p<CR>

" .sh files as Shell script
:autocmd BufNewFile,BufRead *.sh set ft=sh