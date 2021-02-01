" This setting can be useful for determining how many lines of text you want to
" yank. It will display the line number column, but lines will be the distance
" from the current line.
:set relativenumber

" vimcasts #24
" Auto-reload vimrc on save
if has("autocmd")
     autocmd bufwritepost .vimrc source $MYVIMRC
     filetype plugin indent on
 endif

" Load vimrc in new tab with leader-v
nmap <leader>v :tabedit $MYVIMRC<CR>

" I like tabstops of 4, and prefer spaces to tabs. I want the text width to be
" 80, and for it to wrap. My default background is dark. I like syntax
" highlighting.
:set nocompatible
:set encoding=utf-8
:set expandtab
:set textwidth=80
:set tabstop=4
:set softtabstop=4
:set shiftwidth=4
:set number
:set background=dark
:syntax on
:set tags=$HOME/.vim/doc/tags
:set ttyfast
:set showcmd
:set showmode
:set wildmenu
:set wildmode=list:longest
:set undofile
:set splitbelow
:set splitright


" " Via https://twitter.com/vimtips/status/208241766816677889
" " Allows all operations to work with system clipboard
:set clipboard=unnamed


" Added 2005-03-23 Based on http://www.perlmonks.org/index.pl?node_id=441738
:set smarttab
:set shiftround
:set autoindent
:set smartindent

"sudo" save:
:cmap w!! w !sudo tee % >/dev/null

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


" Folding
" Toggle folding with spacebar instead of za
nnoremap <Space> za


" Trim trailing whitespace and \r characters
" autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml,phtml,vimrc autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))


" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :w!<CR>:!php -l %<CR>

" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!php %<CR>

" .inc, phpt, phtml, phps files as PHP
:autocmd BufNewFile,BufRead *.inc set ft=php
:autocmd BufNewFile,BufRead *.phpt set ft=php
:autocmd BufNewFile,BufRead *.phtml set ft=php
:autocmd BufNewFile,BufRead *.phps set ft=php

Highlight current line
:set cursorline