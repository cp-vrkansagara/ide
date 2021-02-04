set runtimepath+=~/.vim
function! VimErrorCaught()
 if v:exception != ""
   echo "\n" . 'Caught "' . v:exception . '" in ' . v:throwpoint ."\n"
 else
   echo 'Nothing caught\n'
 endif
endfunction

try
    " Import defaults configuration
    source $VIMRUNTIME/defaults.vim

    " (0) pathogen.vim for runtimepath
    source ~/.vim/config/plugin/pathogen.vim

    " (1) Helper file for general purpose
    source ~/.vim/config/helper.vim

    " (2) Add basic configuration of editor, Runtime path etc.
    source ~/.vim/config/vim.vim
    source ~/.vim/config/session.vim
    source ~/.vim/config/backup.vim

    " (3) VIM distributed plugins configuration override
    "Load plugin in any order that doesn't matter except pathogen
        for f in split(glob('~/.vim/config/plugin/*.vim'), '\n')
            if (filereadable(f) && stridx(f, 'pathogen.vim') == -1 )
                exe 'source' f
              elseif(stridx(f, 'pathogen.vim') == -1)
                echo "File is not readable " . f
              endif
        endfor

    " (4)Language specific settings configuration,Loading order that doesn't matter
        for f in split(glob('~/.vim/config/language/*.vim'), '\n')
            if (filereadable(f))
                exe 'source' f
            else
                echo "File is not readable " . f
          endif
        endfor

    source ~/.vim/config/skeleton.vim


    " echo "Welcome to the world of Vallabh Kansagara (VRKANSAGARA) - Editor config load [DONE]."
catch /.*/
        call VimErrorCaught()
catch /^\d\+$/
    " Number value exception captured here
    echo "Number thrown.  Value is" v:exception
    echo  "\nError =========@START\n\n"
    echo "Caught error: " . v:exception
    echo "Caught error: " . v:errmsg
    echo  "\nError =========@END\n"
finally
    " This is for fail back.
    " echo "Finally block called."
endtry
