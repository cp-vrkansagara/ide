"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File name :- pathogen.vim
" About:- pathogen.vim: manage your runtimepath
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
let s:vim_runtime = expand('<sfile>:p:h')."/.."
call pathogen#helptags()
execute pathogen#infect()