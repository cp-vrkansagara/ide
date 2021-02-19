
" Open explorer to the right side
let g:NERDTreeWinPos = "right"
"
" Close the pan once file is open
let NERDTreeQuitOnOpen=1

" let NERDTreeMapOpenInTab='\r'
" let NERDTreeMapOpenInTab='<ENTER>'

" Space conflicts with code folding.
:nnoremap <space> :NERDTreeToggle<cr>

" Direct control key conflicts with different OS (i.e. xfce)
" map <A-p> :NERDTreeToggle<cr>

noremap <space> :call NERDTreeToggleInCurDir()<cr>
map <leader>nb :NERDTreeFromBookmark
"map <leader>nf :NERDTreeFind<cr>

" autocmd FileType nerdtree nmap <buffer> <left> o
" autocmd FileType nerdtree nmap <buffer> <right> o
autocmd FileType nerdtree nmap <buffer> <S-right> T: <ESC>

"" Exit Vim if NERDTree is the only window left.
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

"" If another buffer tries to replace NERDTree, put it in the other window, and bring back NERDTree.
autocmd BufEnter * if bufname('#') =~ 'NERD_tree_\d\+' && bufname('%') !~ 'NERD_tree_\d\+' && winnr('$') > 1 | let buf=bufnr() | buffer# | execute "normal! \<C-W>w" | execute 'buffer'.buf | endif

"" Start NERDTree when Vim is started without file arguments.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 0 && !exists('s:std_in') | NERDTree | endif

" Start NERDTree when Vim starts with a directory argument.
autocmd StdinReadPre * let s:std_in=1
autocmd VimEnter * if argc() == 1 && isdirectory(argv()[0]) && !exists('s:std_in') | execute 'NERDTree' argv()[0] | wincmd p | enew | execute 'cd '.argv()[0] | endif

let g:NERDTreeDirArrowExpandable = '+'
let g:NERDTreeDirArrowCollapsible = '-'

function! NERDTreeToggleInCurDir()
	"If NERDTree is open in the current buffer
	if (exists("t:NERDTreeBufName") && bufwinnr(t:NERDTreeBufName) != -1)
		exe ":NERDTreeClose"
	else
		if (expand("%:t") != '')
			exe ":NERDTreeFind"
		else
			exe ":NERDTreeToggle"
		endif
	endif
endfunction
