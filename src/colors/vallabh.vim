" Name:         vallabh
" Description:  VIM theme
" Author:       Vallabh Kansagara<vrkansagara@gmail.com> 
" Maintainer:   Vallabh Kansagara<vrkansagara@gmail.com> 
" License:      Same as Vim
" Last Updated: 20 Feb 2021
" Vim color file

" This is the default color scheme.  It doesn't define the Normal
" highlighting, it uses whatever the colors used to be.

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
""set bg&
set background=dark

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

""let g:colors_name = expand("<sfile>:t:r") " Color scheme by file name
let colors_name = "vallabh" " Color scheme 
let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? 16 : 16
" ===== COLOR SCHEME START =====



" ===== COLOR SCHEME END =====
" vim: sw=2







