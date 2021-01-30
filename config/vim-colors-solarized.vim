" Color scheme
" First line ensures we can have full spectrum of colors
:set t_Co=256
:let g:solarized_termcolors=256
":let g:solarized_termtrans=1
:colorscheme solarized
set background=light
call togglebg#map("<F5>")

" Set utf8 as standard encoding and en_US as the standard language
set encoding=utf8

" Use Unix as the standard file type
set ffs=unix,dos,mac
