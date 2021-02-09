"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File name :- vim.vim
" About:- Very basic configuration about vim
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
nmap <leader>v :tabedit $MYVIMRC<CR>

" Reload vimr configuration file
nnoremap <leader>r :source $MYVIMRC<CR>

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

" Map <leader>ss to turn spelling on (VIM 7.0+)
":for item in ['Bad','Cap','Local','Rare']| exe "hi Spell".item| endfor " Print current value

" word not recognized
:hi SpellBad term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=Red
"word not capitalised
:hi SpellCap term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=Blue
"wrong spelling for region
:hi SpellLocal term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=DarkCyan
"rare word
:hi SpellRare term=undercurl ctermfg=15 ctermbg=0 gui=undercurl guifg=#FFFFFF guibg=#000000 guisp=Magenta



autocmd BufRead,BufNewFile *.md setlocal spell
autocmd BufRead,BufNewFile *.txt setlocal spell
map <leader>ss :setlocal spell spelllang=en_gb<cr>
map <leader>sn ]s
map <leader>sp [s
map <leader>sa zg
map <leader>s? z=

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

" This setting can be useful for determining how many lines of text you want to
" yank. It will display the line number column, but lines will be the distance
" from the current line.
" :set number relativenumber
" Line number must be relative and can be change based on event of mode
:set number relativenumber
:augroup numbertoggle
:  autocmd!
:  autocmd BufEnter,FocusGained,InsertLeave * set relativenumber
:  autocmd BufLeave,FocusLost,InsertEnter   * set norelativenumber
:augroup END

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
:nmap <C-Left> :tabp<CR>
:imap <C-Left> <ESC>:tabp<CR>
:nmap <C-Right> :tabn<CR>
:imap <C-Right> <ESC>:tabn<CR>

:nmap <C-Up> :tabfirst<CR>
:imap <C-Up> <ESC>:tabfirst<CR>
:nmap <C-Down> :tablast<CR>
:imap <C-Down> <ESC>:tablast<CR>

"Vim Splits - Move Faster and More Naturally
" Map <leader>f to split horizontally, and move to bottom window
nnoremap <leader>hh <C-w>s<C-w>j
nnoremap <leader>vv <C-w>v<C-w>j
"
" Use <ctrl> plus direction key to move around within windows
set splitbelow
set splitright
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
