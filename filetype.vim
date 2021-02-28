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


":autocmd FileType vim autocmd BufWritePost <buffer> call OnFileSave()
autocmd BufWritePre <buffer> call OnFileSave()
autocmd BufWritePost <buffer> :call OnFileSave()


function! OnFileSave()
	let ext = &filetype

	if ext == 'vim'
		" Remove : from every first line
		silent! %s/^\s*://
		" Remove white space from file
		silent! %s/\s\+$//e
	elseif ext == 'php'
		" Remove closing tag(?>) from every *.php file only TODO
	endif

	" Remove white space from all file type
	silent! %s/\s\+$//e

endfunction

command! FW call FilterToNewWindow('myscript')

function! FilterToNewWindow(script)
    let TempFile = tempname()
    let SaveModified = &modified
    exe 'w ' . TempFile
    let &modified = SaveModified
    exe 'split ' . TempFile
    exe '%! ' . a:script
endfunction
