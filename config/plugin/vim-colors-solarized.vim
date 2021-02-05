":let g:solarized_termtrans=1
call togglebg#map("<F5>")
:colorscheme solarized

if has('gui_running')
    :set background=light
    :let g:solarized_termtrans = 1
else
    " First line ensures we can have full spectrum of colors
    :set background=light
    :let g:solarized_termtrans = 0
    :set t_Co=256
    :let g:solarized_termcolors=256
    :let g:solarized_bold = 1
    :let g:solarized_underline = 1
    :let g:solarized_italic = 1
    :let g:solarized_visibility= "normal"
    :let g:solarized_termtrans=0
endif
