set runtimepath+=~/.vim_runtime

try
	" Import defaults configuration
	source $HOME/.vim/vendor/vim/defaults81.vim

	" (0) Helper file for general purpose
	 source ~/.vim/config/helper.vim
	 source ~/.vim/config/main.vim

	" (3) Override VIM built in functionality
	for f in split(glob('~/.vim/config/vim/*.vim'), '\n')
		if (filereadable(f))
			exe 'source' f
		else
			throw "File can not able to read " . f
		endif
	endfor

	" (4) VIM distributed plugins configuration override(load into 0-9,az,AZ order)
	for f in split(glob('~/.vim/config/plugin/*.vim'), '\n')
		" if (filereadable(f) && stridx(f, 'pathogen.vim') == -1 )
		if (filereadable(f))
			exe 'source' f
		" elseif(stridx(f, 'pathogen.vim') == -1)
		else
			throw "File can not able to read " . f
		endif
	endfor

	" (5)Language specific settings configuration,Loading order that doesn't matter
	for f in split(glob('~/.vim/config/language/*.vim'), '\n')
		if (filereadable(f))
			exe 'source' f
		else
			throw "File can not able to read " . f
		endif
	endfor

	" Before passing access to user , it must be light background.
	" echo "Welcome to the world of Vallabh Kansagara (VRKANSAGARA) - Editor config load [DONE]."
catch /.*/
	call VimErrorCaught()
catch /^\d\+$/
	echo  "\nError =========@START\n\n"
	echo "Caught error: " . v:exception
	echo "Caught error: " . v:errmsg
	echo  "\nError =========@END\n"
finally
	" This is for fail back.
	" echo "Finally block called."
endtry
