if has("gui_macvim")
    " set macvim specific stuff
    set macligatures
    " set guifont=Fira\ Code:h12
    au GUIEnter * set fullscreen
else
    set gfn=Fira\ Code\ weight=453\ 12
    set go=agimt
endif


