"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File name :- 002-vim-colors-solarized.vim
" About:- Color scheme for the editor.
" Maintainer:- Vallabh Kansagara — @vrkansagara
" Note:- Do not rename of file , as It used for priority include name(002)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
call togglebg#map("<F5>")
:colorscheme solarized

if has('gui_running')
    " First line ensures we can have full spectrum of colors
    :set t_Co=256
    :let g:solarized_bold = 1
    :let g:solarized_underline = 1
    :let g:solarized_italic = 1
    :let g:solarized_visibility= "normal"
    :let g:solarized_termtrans=0
    :let g:solarized_termcolors=256
    :set background=dark

else
    " First line ensures we can have full spectrum of colors
    :set t_Co=256
    :let g:solarized_bold = 1
    :let g:solarized_underline = 1
    :let g:solarized_italic = 1
    :let g:solarized_visibility= "normal"
    :let g:solarized_termtrans=0
    :let g:solarized_termcolors=256
    :set background=light
endif
