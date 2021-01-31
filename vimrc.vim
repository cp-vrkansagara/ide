set runtimepath+=~/.vim_runtime

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

catch
    silent exec "!echo " shellescape(v:exception)
 endtry
