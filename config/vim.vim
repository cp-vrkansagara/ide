" Disable the splash screen
set shortmess +=I

" "Hidden" buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
set hidden

" " Via https://twitter.com/vimtips/status/208241766816677889
" " Allows all operations to work with system clipboard
" set clipboard=unnamed
" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p set paste<CR>:put  *<CR>set nopaste<CR>
noremap <leader>y "*y
noremap <leader>p "*p
noremap <leader>Y "+y
noremap <leader>P "+p

nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>my :tabedit $HOME/.vim/vim.vim<CR>

" Reload vimr configuration file
" nnoremap <leader>r :source $MYVIMRC<CR>
nnoremap <leader>r :source ~/.vim/vimrc.vim<CR>

" The escape key is a long ways away. This maps it to the sequence 'kj'
map! kj <Esc>
<<<<<<< HEAD
inoremap kj <Esc>
=======
:inoremap kj <Esc>
>>>>>>> 275342d72b6b90c5b96e3a0e7fbb31b62b1f9757

" Turn off modelines
set modelines=0

" Remember settings between sessions
set viminfo='400,f1,"500,h,/100,:100,<500

" Repair weird terminal/vim settings
set backspace=start,eol,indent

" Bash is my shell
" Well, not really. But this makes CLI integration better.
let bash_is_sh=1

" Scrolling options
set scrolljump=5
set scrolloff=3

" Turn on "very magic" regex status by default for searches.
" :he /magic for more information
nnoremap / /\v
<<<<<<< HEAD
vnoremap / /\v
=======
:vnoremap / /\v
>>>>>>> 275342d72b6b90c5b96e3a0e7fbb31b62b1f9757

" Highlight Searches
set highlight=lub
map <leader>s set hlsearch<CR>
map <leader>S set nohlsearch<CR>
set incsearch
set showmatch

" Make case-insensitive search the norm
set ignorecase
set smartcase

" Map <leader>f to split horizontally, and move to bottom window
" nnoremap <leader>f <C-w>s<C-w>j
" Use <ctrl> plus direction key to move around within windows
nnoremap <C-h> <C-w>h
nnoremap <C-j> <C-w>j
nnoremap <C-k> <C-w>k
nnoremap <C-l> <C-w>l


" Keybindings for movement in insert mode
imap <leader>0 <Esc>I
imap <leader>$ <Esc>A
imap <leader>h <Esc>i
imap <leader>j <Esc>lji
imap <leader>l <Esc>lli
imap <leader>k <Esc>lki

" Allow better terminal/mouse integration
set mousemodel=extend


" Following will prevent vim from closing folds in a current pane when opening a
" new pane.
" See http://stackoverflow.com/posts/30618494/revisions
autocmd InsertLeave,WinEnter * setlocal foldmethod=syntax
autocmd InsertEnter,WinLeave * setlocal foldmethod=manual


" Use UTF-8 encoding
set encoding=utf-8

" snipMate options
let g:snips_author = "Vallabh Kansagara"

<<<<<<< HEAD
=======
" Folding
" Toggle folding with spacebar instead of za
nnoremap <space> za
>>>>>>> 275342d72b6b90c5b96e3a0e7fbb31b62b1f9757

" Move line up and down using j and k using alter
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+j<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

nnoremap <Up> :echomsg "use k"<cr>
nnoremap <Down> :echomsg "use j"<cr>
nnoremap <Left> :echomsg "use h"<cr>
nnoremap <Right> :echomsg "use l"<cr>

augroup scroll
    au!
    au  VimEnter * :silent !synclient VertEdgeScroll=0
    au  VimLeave * :silent !synclient VertEdgeScroll=1
augroup END
