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
    source ~/.vim/config/pathogen.vim

    " (1) Helper file for general purpose
    source ~/.vim/config/helper.vim

    " (2) Add basic configuration of editor, Runtime path etc.
    source ~/.vim/config/vim.vim



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
