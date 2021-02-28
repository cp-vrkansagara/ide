"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" File name :- 002-vim-colors-solarized.vim
" About:- Color scheme for the editor.
" Maintainer:- Vallabh Kansagara — @vrkansagara
" Note:- Do not rename of file , as It used for priority include name(002)
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

call togglebg#map("<F5>")

let g:solarized_bold = 1
let g:solarized_italic = 1
let g:solarized_underline = 1
let g:solarized_termtrans=0
let g:solarized_contrast = "normal"
let g:solarized_visibility = "normal"

syntax enable

" First line ensures we can have full spectrum of colors
if has('gui_running') || &term =='linux'
    set background=dark
else
    set background=light
endif

if &term == "linux"
    " colorscheme vallabh
    " colorscheme default
	set background=dark
    colorscheme peaksea
else
    let g:solarized_termcolors=256
    set t_Co=256
	" colorscheme peaksea
    colorscheme solarized
endif

