
set foldmethod=indent
set foldnestmax=10
set nofoldenable
set foldlevel=2


" Folding
" Toggle folding with spacebar instead of za
nnoremap <space> za

" set foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*'.&commentstring[0]
autocmd FileType c      setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*//'
autocmd FileType python setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*#'

autocmd FileType php	setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*//'
autocmd FileType php	setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*#'
