" Skeleton (template) files...
:autocmd BufNewFile *.html 0r $HOME/.vim/skeleton/index.html


" Note: The "normal" command afterwards deletes an ugly pending line and moves
" the cursor to the middle of the file.
autocmd BufNewFile *.php 0r ~/.vim/skeleton/index.php | normal Gdd