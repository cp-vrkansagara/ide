"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" About:- Visual vimrc configuration
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_macvim")
	" set macvim specific stuff
	set macligatures
	set guifont=RobotoMonoForPowerline-Medium:h14
	au GUIEnter * set fullscreen
	" This is for mouse scrolling (primarily in GVIM)
	map <M-Esc>[62~ <MouseDown>
	map! <M-Esc>[62~ <MouseDown>
	map <M-Esc>[63~ <MouseUp>
	map! <M-Esc>[63~ <MouseUp>
	map <M-Esc>[64~ <S-MouseDown>
	map! <M-Esc>[64~ <S-MouseDown>
	map <M-Esc>[65~ <S-MouseUp>
	map! <M-Esc>[65~ <S-MouseUp>
else
	set guifont=RobotoMonoForPowerline-Medium:h14
	set go=agimt
endif
