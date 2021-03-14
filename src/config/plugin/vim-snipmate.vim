
""""""""""""""""""""""""""""""
" => snipMate (beside <TAB> support <CTRL-j>)
"""""""""""""""""""""""""""""
" ino <C-j> <C-r>=snipMate#TriggerSnippet()<cr>
" snor <C-j> <esc>i<right><C-r>=snipMate#TriggerSnippet()<cr>

" snipMate options
let g:snips_author = "Vallabh Kansagara"
let g:snipMate = { 'snippet_version' : 1 }
let g:snipMate.snippet_version = 1
inoremap <C-T> <Plug>snipMateNextOrTrigger
smap <C-T> <Plug>snipMateNextOrTrigger

