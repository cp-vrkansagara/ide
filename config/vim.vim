"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File name :- vim.vim
" About:- Very basic configuration about vim
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" With a map leader it's possible to do extra key combinations
let mapleader = ","

" vimcasts #24
" Auto-reload vimrc on save
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
    filetype plugin indent on
endif

" Load vimrc in new tab with leader-v
nmap <leader>v :tabedit $MYVIMRC<CR>

" Reload vimr configuration file
" nnoremap <Leader>r :source ~/.vim/vimrc.vim<CR>
nnoremap <Leader>r :source $MYVIMRC<CR>

" like <leader>q quite current file
:nnoremap <leader>q :q<cr>
" like <leader>Q quite force fully
:nnoremap <leader>Q :qa!<cr>

" Save current file.
:nnoremap <leader>w :w<cr>

" w! Save current file with sudo access
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" like <leader>n one new tab
:nnoremap <leader>t :tabnew<cr>


" Use UTF-8 encoding
:set encoding=utf-8

" The escape key is a long ways away. This maps it to the sequence 'kj'
:map! kj <Esc>
:inoremap kj <Esc>

" Disable the splash screen
:set shortmess +=I

" "Hidden" buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
:set hidden

" " Via https://twitter.com/vimtips/status/208241766816677889
" " Allows all operations to work with system clipboard
:set clipboard=unnamed

" Set line number
:set number

" This setting can be useful for determining how many lines of text you want to
" yank. It will display the line number column, but lines will be the distance
" from the current line.
:set number relativenumber


" Bash is my shell
" Well, not really. But this makes CLI integration better.
:let bash_is_sh=1

" Repair weird terminal/vim settings
:set backspace=start,eol,indent


" Remember settings between sessions
:set viminfo='400,f1,"500,h,/100,:100,<500


"==============

