" Color scheme
" First line ensures we can have full spectrum of colors
" :set t_Co=256
":let g:solarized_termtrans=1

:colorscheme solarized
if has('gui_running')
    set background=dark
else
    :let g:solarized_termcolors=256
    :let g:solarized_bold = 1
    :let g:solarized_underline = 1
    :let g:solarized_italic = 1
    :let g:solarized_visibility= "normal"
    set background=light
endif
call togglebg#map("<F5>")

" Use Unix as the standard file type
set ffs=unix,dos,mac
