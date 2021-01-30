" PHP parser check (Leader + L)
:autocmd FileType php noremap <Leader>l :w!<CR>:!php -l %<CR>

" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!php %<CR>

" .inc, phpt, phtml, phps files as PHP
:autocmd BufNewFile,BufRead *.inc set ft=php
:autocmd BufNewFile,BufRead *.phpt set ft=php
:autocmd BufNewFile,BufRead *.phtml set ft=php
:autocmd BufNewFile,BufRead *.phps set ft=php
:autocmd BufNewFile,BufRead *.blade.php set ft=php


" php.vim overrides
function! PhpSyntaxOverride()
  " highlight annotations better
  hi! def link phpDocTags  phpDefine
  hi! def link phpDocParam phpType
  hi! def link phpDocIdentifier phpIdentifier
endfunction

augroup phpSyntaxOverride
  autocmd!
  autocmd FileType php call PhpSyntaxOverride()
augroup END

" Map <leader>e to expand the class name under the cursor to its FQCN
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>