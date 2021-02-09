" PHP parser check (CTRL + l)
:autocmd FileType php noremap <C-l> :w!<CR>:! clear && php -l %<CR>

" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-m> :w!<CR>:!php %<CR>

:autocmd FileType php  nnoremap <F8> :call PhpCsCheck()<CR>
:autocmd FileType php  nnoremap <F9> :call PhpCsFix()<CR>

" .inc, phpt, phtml, phps files as PHP
:autocmd BufNewFile,BufRead *.inc set ft=php
:autocmd BufNewFile,BufRead *.phpt set ft=php
:autocmd BufNewFile,BufRead *.phtml set ft=php
:autocmd BufNewFile,BufRead *.phps set ft=php
:autocmd BufNewFile,BufRead *.blade.php set ft=php

:set omnifunc=phpcomplete#CompletePHP


function! PhpCsCheck()
    try
        exec "!./vendor/bin/phpcs ". expand('%:p')
    catch
        " echo "\n" . 'Caught "' . v:exception . '" in ' . v:throwpoint ."\n"
        throw :exception
    endtry
    return 1
endfunction



function! PhpCsFix()
    try
        call PhpCsCheck()
        exec "!./vendor/bin/phpcbf ". expand('%:p')
    catch
        " echo "\n" . 'Caught "' . v:exception . '" in ' . v:throwpoint ."\n"
        throw :exception
    endtry
    return 1
endfunction
" Map <leader>e to expand the class name under the cursor to its FQCN
function! IPhpExpandClass()
    call PhpExpandClass()
    call feedkeys('a', 'n')
endfunction
autocmd FileType php inoremap <Leader>e <Esc>:call IPhpExpandClass()<CR>
autocmd FileType php noremap <Leader>e :call PhpExpandClass()<CR>

:set omnifunc=phpcomplete#CompletePHP
