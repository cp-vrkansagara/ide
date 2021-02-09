"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" About:- Tab related configuration
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

" like <leader>n one new tab
:nnoremap <leader>t :tabnew<cr>


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

" Opens a new tab with the current buffer's path
" Super useful when editing files in the same directory
map <leader>te :tabedit <C-r>=expand("%:p:h")<cr>/
