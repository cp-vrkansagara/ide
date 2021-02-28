
<<<<<<< HEAD
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

=======

set foldmethod=indent

" set foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*'.&commentstring[0]

autocmd FileType c      setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*//'
autocmd FileType python setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*#'



>>>>>>> 275342d72b6b90c5b96e3a0e7fbb31b62b1f9757
autocmd FileType php	setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*//'
autocmd FileType php	setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*#'
