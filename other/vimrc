
" Disable the splash screen
:set shortmess +=I

:filetype off
call pathogen#infect()
call pathogen#helptags()

"Easier Navigation https://robots.thoughtbot.com/vim-splits-move-faster-and-more-naturally
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" This setting can be useful for determining how many lines of text you want to
" yank. It will display the line number column, but lines will be the distance
" from the current line.
:set relativenumber

" Added 2010-09-21 Based on http://stevelosh.com/blog/2010/09/coming-home-to-vim
" Set mapleader to ","
let mapleader = ","

" vimcasts #24
" Auto-reload vimrc on save
if has("autocmd")
     autocmd bufwritepost .vimrc source $MYVIMRC
     filetype plugin indent on
 endif

" Load vimrc in new tab with leader-v
nmap <leader>v :tabedit $MYVIMRC<CR>

"Hidden" buffers -- i.e., don't require saving before editing another file.
" Calling quit will prompt you to save unsaved buffers anyways.
:set hidden

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

" Remap F1 to escape, because that happens a lot when reaching. :)
inoremap <F1> <ESC>
nnoremap <F1> <ESC>
vnoremap <F1> <ESC>


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

" Execute last command over a visual selection
:vnoremap . :norm.<CR>

" Folding
" Toggle folding with spacebar instead of za
nnoremap <Space> za

" Pasting toggle...
" :set pastetoggle=<Ins>

" Highlight Searches
:set highlight=lub
:map <Leader>s :set hlsearch<CR>
:map <Leader>S :set nohlsearch<CR>
:set incsearch
:set showmatch

" HTML tag closing macro
:let g:closetag_html_style=1
:autocmd Filetype html source $HOME/.vim/closetag.vim"

" 2-space tab-width for HTML
:autocmd FileType html set shiftwidth=2 tabstop=2 softtabstop=2

" 2-space tab-width for CSS
:autocmd FileType css set shiftwidth=2 tabstop=2 softtabstop=2

" 2-space tab-width for JS
:autocmd FileType javascript set shiftwidth=2 tabstop=2 softtabstop=2

" PHP options
:function! PhpDocLoad()
:   so $HOME/.vim/php-doc.vim
:   inoremap <C-P><ESC> :call PhpDocSingle()<CR>i
:   nnoremap <C-P> :call PhpDocSingle()<CR>
:   vnoremap <C-P> :call PhpDocRange()<CR>
:   inoremap ( ()<Left>
:endfunction

" PHP syntax settings
:let php_sql_query=1
:let php_htmlInStrings=1
:let php_folding=1
:let php_parent_error_close=1
:let php_parent_error_open=1
:autocmd BufNewFile,BufRead *.php call PhpDocLoad()

" PHP parser check (CTRL-L)
:autocmd FileType php noremap <C-L> :w!<CR>:!php -l %<CR>

" run file with PHP CLI (CTRL-M)
:autocmd FileType php noremap <C-M> :w!<CR>:!php %<CR>

" run file using PHPUnit (Leader-u)
:autocmd FileType php noremap <Leader>u :w!<CR>:!phpunit %<CR>

" Syntax highlighting macro
:map <Leader>h :syn on<CR>
:map <Leader>H :syn off<CR>

" Keybindings for movement in insert mode
imap <Leader>0 <Esc>I
imap <Leader>$ <Esc>A
imap <Leader>h <Esc>i
imap <Leader>l <Esc>lli
imap <Leader>j <Esc>lji
imap <Leader>k <Esc>lki

" Trim trailing whitespace and \r characters
" autocmd FileType c,cpp,java,php,javascript,python,twig,xml,yml,phtml,vimrc autocmd BufWritePre <buffer> :call setline(1,map(getline(1,"$"),'substitute(v:val,"\\s\\+$","","")'))

" The escape key is a long ways away. This maps it to the sequence 'kj'
:map! kj <Esc>
:inoremap kj <Esc>

" Turn on filetype plugins
:filetype plugin on
:filetype plugin indent on
:runtime! $HOME/.vim/ftdetect/*.vim

" Format paragraphs
" Use this when writing documents you're going to import into a word
" processor, etc -- gets rid of wrapping.
:map! <Leader>fp :%s/\n\([^\n]\)/ \1/<CR>

" Make case-insensitive search the norm
:set ignorecase
:set smartcase

" Allow better terminal/mouse integration
:set mousemodel=extend

" .inc, phpt, phtml, phps files as PHP
:autocmd BufNewFile,BufRead *.inc set ft=php
:autocmd BufNewFile,BufRead *.phpt set ft=php
:autocmd BufNewFile,BufRead *.phtml set ft=php
:autocmd BufNewFile,BufRead *.phps set ft=php

" Use viminfo
:set viminfo='100,f1,\"1000,:100,/100,h,%

" syntax highlighting for email
:au BufRead,BufNewFile .followup,.article,.letter :set ft=mail

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
" :nmap <C-w> :tabclose<CR>
" :imap <C-w> <ESC>:tabclose<CR>

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
" call togglebg#map("<F5>")

" ACK support
:set grepprg=ack-grep\ -a
:let g:ackprg="ack-grep -H --nocolor --nogroup --column"
:map <Leader>g :Ack

" snipMate options
let g:snips_author = "Matthew Weier O'Phinney"

 
" Highlight current line
 :set cursorline

" Added 2010-10-23: Include git branch, if available, in status line
" This one is for the git-vim plugin:
":set statusline=%<%{GitBranch()}:%f\ %h%m%r%=%-14.(%l,%c%V%)\ %P
" This one is for the vim-fugitive plugin:
:set statusline=%<%f\ %h%m%r%{fugitive#statusline()}%=%-14.(%l,%c%V%)\ %P

" Added 16-Jun-2011: auto-cleans fugitive buffers
" From http://vimcasts.org/episodes/fugitive-vim-browsing-the-git-object-database/
autocmd BufReadPost fugitive://* set bufhidden=delete

" Markdown helpers
" <leader>1 creates the ==== lines below a header
" <leader>2 creates the ---- lines below a header
" <leader>3 creates the ^^^^ lines below a header
" Suggested by http://stevelosh.com/blog/2010/09/coming-home-to-vim/
nnoremap <leader>1 yypVr=
nnoremap <leader>2 yypVr-
nnoremap <leader>3 yypVr^
" augroup markdown
"     au!
"     au BufNewFile,BufRead *.md,*.markdown,*.mkd setlocal filetype=markdown
" augroup END

let g:markdown_enable_folding = 1

" TagList options
nnoremap <silent> <F8> :TlistToggle<CR>
let Tlist_Use_Right_Window = 1
let Tlist_Compact_Format = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_GainFocus_On_ToggleOpen = 1
let Tlist_File_Fild_Auto_Close = 1
let Tlist_Inc_Winwidth = 0
let Tlist_Close_On_Select = 1
let Tlist_Process_File_Always = 1
let Tlist_Display_Prototype = 0
let Tlist_Display_Tag_Scope = 1

" Preserve indentation while pasting text from the OS X clipboard
noremap <leader>p :set paste<CR>:put  *<CR>:set nopaste<CR>

" phpcomplete.vim settings
let g:phpcomplete_complete_for_unkonwn_classes = 1
let g:phpcomplete_min_num_of_chars_for_namespace_completion = 1
let g:phpcomplete_parse_docblock_comments = 1
let g:phpcomplete_cache_taglists = 1
let g:phpcomplete_enhance_jump_to_definition = 1
let g:phpcomplete_mappings =
    \ {
    \     'jump_to_def': ',g',
    \     'jump_to_def_split': '<C-]>',
    \     'jump_to_def_vsplit': '<C-W><C-]>',
    \ }

" mustache.vim settings
if has("autocmd")
    au  BufnewFile,BufRead *.mustache set syntax=mustache
endif

" syntastic settings
let g:syntastic_check_on_open=0
let g:syntastic_auto_jump=1
let g:syntastic_auto_loc_list=1
let g:syntastic_mode_map = 
    \ {
        \ 'mode': 'active',
        \ 'active_filetypes': 
            \ [
                \ 'css',
                \ 'docbk',
                \ 'html',
                \ 'javascript',
                \ 'json',
                \ 'php',
                \ 'sh',
                \ 'xhtml',
                \ 'xml'
            \ ]
    \ }

let g:syntastic_javascript_checkers = ['jshint']
let g:syntastic_json_checkers = ['jsonlint']
let g:syntastic_json_jsonlint_args = ['-q -c']
let g:syntastic_php_checkers = ['php', 'phpcs']
let g:syntastic_php_phpcs_args = "--report=csv --standard=PSR2"

" Inline-Edit
nnoremap <leader>e :InlineEdit<cr>
xnoremap <leader>e :InlineEdit<cr>
inoremap <c-e> <esc>:InlineEdit<cr>a


" My Custom Settings

"How can I map a specific key or shortcut to open NERDTree?
map <C-n> :NERDTreeToggle<CR>

"How can I close vim if the only window left open is a NERDTree?
" autocmd bufenter * if (winnr("$") == 1 && exists("b:NERDTreeType") && b:NERDTreeType == "primary") | q | endif

"How can I open a NERDTree automatically when vim starts up if no files were specified?
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

"Zend Coding (Formally called as emmnet.io)
let g:user_emmet_leader_key=','
