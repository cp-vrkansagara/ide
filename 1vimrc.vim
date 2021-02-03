set runtimepath+=~/.vim_runtime


function! VimErrorCaught()
 if v:exception != ""
   echo "\n" . 'Caught "' . v:exception . '" in ' . v:throwpoint ."\n"
 else
   echo 'Nothing caught\n'
 endif
endfunction

try
    " base vim configuration form https://github.com/amix/vimrc @START
    source ~/.vim_runtime/vimrcs/basic.vim
    source ~/.vim_runtime/vimrcs/filetypes.vim
    source ~/.vim_runtime/vimrcs/plugins_config.vim
    source ~/.vim_runtime/vimrcs/extended.vim
    " base vim configuration form https://github.com/amix/vimrc @END

    " My own configuration @START
    source ~/.vim/config/vim.vim
    source ~/.vim/config/bufexplorer.vim
    source ~/.vim/config/vim-colors-solarized.vim
    source ~/.vim/config/lightline.vim


    source ~/.vim/config/tab.vim
    source ~/.vim/config/nerdtree.vim
    source ~/.vim/config/skeleton.vim

    source ~/.vim/config/gvimrc.vim

    " Language specific vim config(s)
    source ~/.vim/config/language/gcc.vim
    source ~/.vim/config/language/php.vim
    source ~/.vim/config/language/ruby.vim
    source ~/.vim/config/language/js.vim
    source ~/.vim/config/language/mustache.vim

    " Linux terminal specic vim config(s) like , tmux,nmap,top etc..
    source ~/.vim/config/tmux.vim

    " My own configuration @START
    source ~/.vim/config/macro/html.vim
    echo "Welcome to the world of Vallabh Kansagara (VRKANSAGARA) - Editor config load [DONE]."

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
    " Tihs is for fail back.
    " echo "Finally block called."
endtry
