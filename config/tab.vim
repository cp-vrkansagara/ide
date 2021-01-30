" Tab options (as in Vim GUI Tabs)
" <C-t> Opens a new tab, <C-w> closes current tab
" Remember, gt goes to next tab, gT goes to previous; easier than using firefox
" control sequences
" I don't use tabs often, so I've disabled these for now.
" :nmap <C-t> :tabnew<CR>
" :imap <C-t> <ESC>:tabnew<CR>
" :nmap <C-w> :tabclose<CR>
" :imap <C-w> <ESC>:tabclose<CR>
:nmap <C-Left> :tabprevious<CR>
:imap <C-Left> <ESC>:tabeprevious<CR>
:nmap <C-Right> :tabNext<CR>
:imap <C-Right> <ESC>:tabNext<CR>