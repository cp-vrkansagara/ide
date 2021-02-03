"How can I open a NERDTree automatically when vim starts up if no files were specified?
" autocmd StdinReadPre * let s:std_in=1
" autocmd VimEnter * if argc() == 0 && !exists("s:std_in") | NERDTree | endif

let NERDTreeQuitOnOpen=1
" nnoremap <C-t> :NERDTreeToggle<CR>
:nnoremap <leader><Space> :NERDTreeToggle<cr>
map <leader>nb :NERDTreeFromBookmark
" nnoremap <C-f> :NERDTreeFind<CR>
" map <leader>nf :NERDTreeFind<cr>
let NERDTreeShowHidden=1
let g:NERDTreeWinPos = "right"
autocmd BufWinEnter * silent NERDTreeMirror

" NERDTree reload new files
autocmd BufEnter NERD_tree_* | execute 'normal R'