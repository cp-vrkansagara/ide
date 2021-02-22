

set foldmethod=indent

" set foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*'.&commentstring[0]

autocmd FileType c      setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*//'
autocmd FileType python setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*#'



autocmd FileType php	setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*//'
autocmd FileType php	setlocal foldmethod=expr foldexpr=getline(v:lnum)=~'^\\s*#'
