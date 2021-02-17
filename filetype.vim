" This file will be loaded by vim by default
" Ref: - https://github.com/vim/vim/blob/master/runtime/filetype.vim
" Vim script

if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	au! BufRead,BufNewFile *.foo,*.bar,*.baz		setfiletype foo
augroup END
