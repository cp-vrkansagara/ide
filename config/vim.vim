" Disable the splash screen
:set shortmess +=I

" "Hidden" buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
:set hidden

" " Via https://twitter.com/vimtips/status/208241766816677889
" " Allows all operations to work with system clipboard
:set clipboard=unnamed

" This setting can be useful for determining how many lines of text you want to
" yank. It will display the line number column, but lines will be the distance
" from the current line.
:set relativenumber

" Load vimrc in new tab with leader-v
nmap <leader>v :tabedit $MYVIMRC<CR>

" Reload vimr configuration file
" nnoremap <Leader>r :source $MYVIMRC<CR>
nnoremap <Leader>r :source ~/.vim/vimrc.vim<CR>


" The escape key is a long ways away. This maps it to the sequence 'kj'
:map! kj <Esc>
:inoremap kj <Esc>

" Turn off modelines
:set modelines=0

" Remember settings between sessions
:set viminfo='400,f1,"500,h,/100,:100,<500

" Repair weird terminal/vim settings
:set backspace=start,eol,indent

" Bash is my shell
" Well, not really. But this makes CLI integration better.
:let bash_is_sh=1

" Use UTF-8 encoding
:set encoding=utf-8

" Scrolling options
set scrolljump=5
set scrolloff=3

" Turn on "very magic" regex status by default for searches.
" :he /magic for more information
:nnoremap / /\v
:vnoremap / /\v

" Highlight Searches
:set highlight=lub
:map <Leader>s :set hlsearch<CR>
:map <Leader>S :set nohlsearch<CR>
:set incsearch
:set showmatch

" Make case-insensitive search the norm
:set ignorecase
:set smartcase

" Map <leader>f to split horizontally, and move to bottom window
" nnoremap <leader>f <C-w>s<C-w>j
" Use <ctrl> plus direction key to move around within windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Keybindings for movement in insert mode
imap <Leader>0 <Esc>I
imap <Leader>$ <Esc>A
imap <Leader>h <Esc>i
imap <Leader>l <Esc>lli
imap <Leader>j <Esc>lji
imap <Leader>k <Esc>lki
