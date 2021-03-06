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
"
" Call "filetype off" first to ensure that bundle ftplugins can be added to the
" path before we re-enable it later in the vimrc.
filetype off

let s:vim_runtime = expand('<sfile>:p:h')."/../../.."
" let s:vim_runtime = expand("%:p:h") ."/../../.."

call pathogen#infect(s:vim_runtime.'/bundle/{}')

" Vendor forlder is source of github/third party code
call pathogen#infect(s:vim_runtime.'/vendor/{}')

call pathogen#helptags()

filetype plugin on
filetype plugin indent on