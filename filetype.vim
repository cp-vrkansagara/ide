" This file will be loaded by vim by default
" Ref: - https://github.com/vim/vim/blob/master/runtime/filetype.vim
" If vim not detect file type user can add it manually
" Vim script

if exists("did_load_filetypes")
	finish
endif
augroup filetypedetect
	au! BufRead,BufNewFile *.foo,*.bar,*.baz		setfiletype fooBarBaz
augroup END



" :autocmd FileType vim autocmd BufWritePre <buffer> call OnFileSave()
" :autocmd FileType vim autocmd BufWritePost <buffer> call OnFileSave()
" :autocmd BufWritePost <buffer> :call OnFileSave()

function! OnFileSave()
	let ext = &filetype
	let current_buff = bufnr("%")
	if ext == 'vim'
		let matchstart = match(current_buff, ':%s/^://')
		echom matchstart
		if matchstart > 0
			silent %s/^://
		else
		endif
	endif
endfunction

