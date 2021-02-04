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
nnoremap <Leader>r :source ~/.vim/vimrc.vim<CR>
"nnoremap <leader>r :source $MYVIMRC<CR>

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

" Switch CWD to the directory of the open buffer:
map <leader>cd :cd %:p:h<cr>:pwd<cr>

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

" enable mouse usage. makes it easier to browse multiple tabs,
:set mouse=a



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


" Highlight current line
set cursorline
:hi CursorLine   term=bold cterm=bold ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:hi CursorColumn term=bold cterm=bold ctermbg=darkred ctermfg=white guibg=darkred guifg=white
:nnoremap <Leader>c :set cursorline! cursorcolumn!<CR>


" Tab options (as in Vim GUI Tabs)
" <C-t> Opens a new tab, <C-w> closes current tab
" Remember, gt goes to next tab, gT goes to previous; easier than using firefox
" control sequences
" I don't use tabs often, so I've disabled these for now.
" :nmap <C-t> :tabnew<CR>
" :imap <C-t> <ESC>:tabnew<CR>
" :nmap <C-w> :tabclose<CR>
" :imap <C-w> <ESC>:tabclose<CR>
:nmap <c-left> : tabprevious<CR>
:imap <c-left> <ESC>:tabeprevious<CR>
:nmap <c-right> :tabNext<CR>
:imap <c-right> <ESC>:tabNext<CR>
"==============
"Vim Splits - Move Faster and More Naturally
" Map <leader>f to split horizontally, and move to bottom window
nnoremap <leader>h <C-w>s<C-w>j
nnoremap <leader>v <C-w>v<C-w>j
" Use <ctrl> plus direction key to move around within windows
set splitbelow
set splitright
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l
