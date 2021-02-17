"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" About:- Main configuration file for the VIM(init)
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" With a map leader it's possible to do extra key combinations
:let mapleader = ","

" vimcasts #24
" Auto-reload vimrc on save
if has("autocmd")
    autocmd bufwritepost .vimrc source $MYVIMRC
    filetype plugin on
    filetype plugin indent on
endif

" Load vimrc in new tab with leader-v
:nmap <leader>v :tabedit $MYVIMRC<CR>

" Reload vimr configuration file
:nnoremap <leader>r :source $MYVIMRC<CR>

" like <leader>q quite current file
:nnoremap <leader>q :q<cr>
" like <leader>Q quite force fully
:nnoremap <leader>Q :qa!<cr>

" Save current file.
:nnoremap <leader>w :w<cr>

" w! Save current file with sudo access
" (useful for handling the permission-denied error)
command! W execute 'w !sudo tee % > /dev/null' <bar> edit!

" Use UTF-8 encoding
:set encoding=utf-8


" Set text width to 80 character only., I am not using at this time.
" :set textwidth=80
:set textwidth=0

:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set ttyfast
set showcmd
:set showmode
:set wildmenu
:set wildmode=list:longest

" Added 2005-03-23 Based on http://www.perlmonks.org/index.pl?node_id=441738
:set smarttab
:set shiftround
:set autoindent
:set smartindent

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
" Allow better terminal/mouse integration
:set mousemodel=extend

" Via https://twitter.com/vimtips/status/208241766816677889
" Allows all operations to work with system clipboard
:set clipboard=unnamed

" Bash is my shell
" Well, not really. But this makes CLI integration better.
:let bash_is_sh=1

" Repair weird terminal/vim settings
:set backspace=start,eol,indent

" Remember settings between sessions
:set viminfo='400,f1,"500,h,/100,:100,<500

" Switch CWD to the directory of the open buffer:
map <leader>cd :cd %:p:h<cr>:pwd<cr>

" Keybindings for movement in insert mode
imap <Leader>0 <Esc>I
imap <Leader>$ <Esc>A
imap <Leader>h <Esc>i
imap <Leader>l <Esc>lli
imap <Leader>j <Esc>lji
imap <Leader>k <Esc>lki


" Execute last command over a visual selection
:vnoremap . :norm.<CR>

" Folding
" Toggle folding with spacebar instead of za
"nnoremap <Space> za

" Pasting toggle...
:set pastetoggle=<Ins>

" Turn off modelines
:set modelines=0

" Show info in ruler
set laststatus=2

" Scrolling options
set scrolljump=5
set scrolloff=3

" Yank text to the clipboard easier
noremap <leader>y "*y
noremap <leader>yy "*Y

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>
