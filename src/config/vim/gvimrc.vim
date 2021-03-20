"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""
" About:- Visual vimrc configuration
" Maintainer:- Vallabh Kansagara — @vrkansagara
"""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""""

if has("gui_macvim")
	" set macvim specific stuff

	"Open into full screen mode
	au GUIEnter * set fullscreen

	set macligatures
	set guifont=Fira_Code:h14

	set guioptions-=l
	set guioptions-=L
	set guioptions-=r
	set guioptions-=R

	" This is for mouse scrolling (primarily in GVIM)
	map <M-Esc>[62~ <MouseDown>
	map! <M-Esc>[62~ <MouseDown>
	map <M-Esc>[63~ <MouseUp>
	map! <M-Esc>[63~ <MouseUp>
	map <M-Esc>[64~ <S-MouseDown>
	map! <M-Esc>[64~ <S-MouseDown>
	map <M-Esc>[65~ <S-MouseUp>
	map! <M-Esc>[65~ <S-MouseUp>
	set macligatures

	"No damn bells!
	set noerrorbells visualbell t_vb=
else

	set go=agimt
	" set guifont=Fira_Code:h17
	set guifont=Hack\ 9
	set linespace=15
endif

