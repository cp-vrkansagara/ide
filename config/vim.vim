" Disable the splash screen
set shortmess +=I

" "Hidden" buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
set hidden

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
vnoremap / /\v

" Highlight Searches
set highlight=lub
nnoremap <leader>s set hlsearch<CR>
nnoremap <leader>S set nohlsearch<CR>
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
inoremap <leader>0 <Esc>I
inoremap <leader>$ <Esc>A
inoremap <leader>h <Esc>i
inoremap <leader>j <Esc>lji
inoremap <leader>l <Esc>lli
inoremap <leader>k <Esc>lki

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

" Folding
" Toggle folding with spacebar instead of za
nnoremap <space> za

" Move line up and down using j and k using alter
nnoremap <A-j> :m .+1<CR>==
nnoremap <A-k> :m .-2<CR>==
inoremap <A-j> <Esc>:m .+j<CR>==gi
inoremap <A-k> <Esc>:m .-2<CR>==gi
vnoremap <A-j> :m '>+1<CR>gv=gv
vnoremap <A-k> :m '<-2<CR>gv=gv

augroup scroll
    au!
    au  VimEnter * :silent !synclient VertEdgeScroll=0
    au  VimLeave * :silent !synclient VertEdgeScroll=1
augroup END
