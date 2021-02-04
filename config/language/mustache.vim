" mustache.vim settings
if has("autocmd")
    au  BufnewFile,BufRead *.mustache set syntax=mustache
endif