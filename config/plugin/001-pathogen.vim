"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File name :- 001-pathogen.vim
" About:- pathogen.vim: manage your runtimepath
" Maintainer:- Vallabh Kansagara — @vrkansagara
" Note:- Do not rename of file , as It used for priority include name(001)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" Enable pathogen bundles
" See http://www.vim.org/scripts/script.php?script_id=2332
" Put github plugins under .vim/bundle/ -- which allows keeping them updated
" without having to do separate installation.
""""""""""""""""""""""""""""""
" => Load pathogen paths
""""""""""""""""""""""""""""""
" let s:vim_runtime = expand('<sfile>:p:h')."/.."
"
" Call "filetype off" first to ensure that bundle ftplugins can be added to the
" path before we re-enable it later in the vimrc.
filetype off

call pathogen#infect()
" call pathogen#incfect(s:vim_runtime.'/sources_forked/{}')
" call pathogen#infect(s:vim_runtime.'/sources_non_forked/{}')
" call pathogen#infect(s:vim_runtime.'/my_plugins/{}')
call pathogen#helptags()
