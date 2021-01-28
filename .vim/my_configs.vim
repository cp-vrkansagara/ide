" Disable the splash screen
:set shortmess +=I

"Enable syntax highlighting
if has('syntax')
  syntax on
endif

set number
" Highlight current line
:set cursorline
hi CursorLine term=bold cterm=bold guibg=Grey40

" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!$HOME/bin/php %<CR>

" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :!$HOME/bin/php -l %<CR>


" This setting can be useful for determining how many lines of text you want to
" yank. It will display the line number column, but lines will be the distance
" from the current line.
:set relativenumber


" vimcasts #24
" Auto-reload vimrc on save
if has("autocmd")
     autocmd bufwritepost .vimrc source $MYVIMRC
 endif

 " Load vimrc in new tab with leader-v
" nmap <leader>v :tabedit $MYVIMRC<CR>
nmap <leader>v :tabedit ~/.vim_runtime/my_configs.vim<CR>

"Hidden" buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
:set hidden

" " Via https://twitter.com/vimtips/status/208241766816677889
" " Allows all operations to work with system clipboard
:set clipboard=unnamed

"sudo" save:
:cmap w!! w !sudo tee % >/dev/null

" The escape key is a long ways away. This maps it to the sequence 'kj'
:map! kj <Esc>
:inoremap kj <Esc>

" Allow better terminal/mouse integration
:set mousemodel=extend

" Remember settings between sessions
:set viminfo='400,f1,"500,h,/100,:100,<500

" Repair weird terminal/vim settings
:set backspace=start,eol,indent

" Bash is my shell
" Well, not really. But this makes CLI integration better.
:let bash_is_sh=1

" Tab options (as in Vim GUI Tabs)
" <C-t> Opens a new tab, <C-w> closes current tab
" Remember, gt goes to next tab, gT goes to previous; easier than using firefox
" control sequences
" I don't use tabs often, so I've disabled these for now.
:nmap <C-t> :tabnew<CR>
:imap <C-t> <ESC>:tabnew<CR>
:nmap <C-w> :tabclose<CR>
:imap <C-w> <ESC>:tabclose<CR>

" Use UTF-8 encoding
:set encoding=utf-8

" Show info in ruler
set laststatus=2

" Scrolling options
set scrolljump=5
set scrolloff=3

" netrw options
" Map ,n to open netrw in the current working directory
:map <Leader>n :edit .<CR>
" Hide swap and undo files from netrw
:let g:netrw_list_hide="^\.sw.*$,^\.*\.sw.*$,^\..*\.un[~]$"

" Color scheme
" First line ensures we can have full spectrum of colors
:set t_Co=256
:let g:solarized_termcolors=256
":let g:solarized_termtrans=1
:colorscheme solarized
set background=light
call togglebg#map("<F5>")

" ACK support
:set grepprg=ack-grep\ -a
:let g:ackprg="ack-grep -H --nocolor --nogroup --column"
:map <Leader>g :Ack

" snipMate options
let g:snips_author = "Vallabh Kansagara"

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

"How can I open a NERDTree automatically when vim starts up if no files were specified?
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif
let NERDTreeQuitOnOpen=1
let NERDTreeMapOpenInTab='<ENTER>'

" C and C++ related stuff goes here
" run file with gnu compiler
:autocmd FileType c noremap <C-M> :w!<CR>:!/usr/bin/gcc % && ./a.out<CR>
