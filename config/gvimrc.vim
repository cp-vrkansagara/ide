if has("gui_macvim")
    " set macvim specific stuff
    set macligatures
    " set guifont=Fira\ Code:h12
    au GUIEnter * set fullscreen
else
    set gfn=Fira\ Code\ weight=453\ 12
    set go=agimt
endif


" This is for mouse scrolling (primarily in GVIM)
:map <M-Esc>[62~ <MouseDown>
:map! <M-Esc>[62~ <MouseDown>
:map <M-Esc>[63~ <MouseUp>
:map! <M-Esc>[63~ <MouseUp>
:map <M-Esc>[64~ <S-MouseDown>
:map! <M-Esc>[64~ <S-MouseDown>
:map <M-Esc>[65~ <S-MouseUp>
:map! <M-Esc>[65~ <S-MouseUp>
