" Name:         vallabh
" Description:  VIM theme
" Author:       Vallabh Kansagara<vrkansagara@gmail.com> 
" Maintainer:   Vallabh Kansagara<vrkansagara@gmail.com> 
" License:      Same as Vim
" Last Updated: 20 Feb 2021
" Vim color file

" Set 'background' back to the default.  The value can't always be estimated
" and is then guessed.
hi clear Normal
set bg&

" Remove all existing highlighting and set the defaults.
hi clear

" Load the syntax highlighting defaults, if it's enabled.
if exists("syntax_on")
  syntax reset
endif

" let g:colors_name = expand("<sfile>:t:r") " Color scheme by file name
" let s:t_Co = exists('&t_Co') && !empty(&t_Co) && &t_Co > 1 ? 16 : 16

" " ===== COLOR SCHEME START =====
set background=light

" highlight Normal ctermbg=0 ctermfg=15
highlight String ctermbg=NONE ctermfg=15

  hi Normal		guifg=#000000	guibg=#e0e0e0	gui=NONE
  hi Search		guifg=NONE	guibg=#f8f8f8	gui=NONE
  hi Visual		guifg=NONE	guibg=#a6caf0	gui=NONE
  hi Cursor		guifg=#f0f0f0	guibg=#008000	gui=NONE
  hi CursorIM		guifg=#f0f0f0	guibg=#800080   gui=NONE
  hi Special		guifg=#907000	guibg=NONE	gui=NONE
  hi Comment		guifg=#606000	guibg=NONE	gui=NONE
  hi Number		guifg=#907000	guibg=NONE	gui=NONE
  hi Constant		guifg=#007068	guibg=NONE	gui=NONE
  hi StatusLine		guifg=fg	guibg=#a6caf0	gui=NONE
  hi LineNr		guifg=#686868	guibg=NONE	gui=NONE
  hi Question		guifg=fg	guibg=#d0d090	gui=NONE
  hi PreProc		guifg=#009030	guibg=NONE	gui=NONE
  hi Statement		guifg=#2060a8	guibg=NONE	gui=NONE
  hi Type		guifg=#0850a0	guibg=NONE	gui=NONE
  hi Todo		guifg=#800000	guibg=#e0e090	gui=NONE
  " NOTE THIS IS IN THE WARM SECTION
  hi Error		guifg=#c03000	guibg=NONE	gui=NONE
  hi Identifier		guifg=#a030a0	guibg=NONE	gui=NONE
  hi ModeMsg		guifg=fg	guibg=#b0b0e0	gui=NONE
  hi VisualNOS		guifg=fg	guibg=#b0b0e0	gui=NONE
  hi SpecialKey		guifg=#1050a0	guibg=NONE	gui=NONE
  hi NonText		guifg=#002090	guibg=#d0d0d0	gui=NONE
  hi Directory		guifg=#a030a0	guibg=NONE	gui=NONE
  hi ErrorMsg		guifg=fg	guibg=#f0b090	gui=NONE
  hi MoreMsg		guifg=#489000	guibg=NONE	gui=NONE
  hi Title		guifg=#a030a0	guibg=NONE	gui=NONE
  hi WarningMsg		guifg=#b02000	guibg=NONE	gui=NONE
  hi WildMenu		guifg=fg	guibg=#d0d090	gui=NONE
  hi Folded		guifg=NONE	guibg=#b0e0b0	gui=NONE
  hi FoldColumn		guifg=fg	guibg=#90e090	gui=NONE
  hi DiffAdd		guifg=NONE	guibg=#b0b0e0	gui=NONE
  hi DiffChange		guifg=NONE	guibg=#e0b0e0	gui=NONE
  hi DiffDelete		guifg=#002090	guibg=#d0d0d0	gui=NONE
  hi DiffText		guifg=NONE	guibg=#c0e080	gui=NONE
  hi SignColumn		guifg=fg	guibg=#90e090	gui=NONE

  hi IncSearch		guifg=#f0f0f0	guibg=#806060	gui=NONE
  hi StatusLineNC	guifg=fg	guibg=#c0c0c0	gui=NONE
  hi VertSplit		guifg=fg	guibg=#c0c0c0	gui=NONE
  hi Underlined		guifg=#6a5acd	guibg=NONE	gui=underline
  hi Ignore		guifg=bg	guibg=NONE
  " NOTE THIS IS IN THE WARM SECTION
  if v:version >= 700
    if has('spell')
      hi SpellBad	guifg=NONE	guibg=NONE	guisp=#c03000
      hi SpellCap	guifg=NONE	guibg=NONE	guisp=#2060a8
      hi SpellRare	guifg=NONE	guibg=NONE	guisp=#a030a0
      hi SpellLocal	guifg=NONE	guibg=NONE	guisp=#007068
    endif
    hi Pmenu		guifg=fg	guibg=#e0b0e0
    hi PmenuSel		guifg=#f0f0f0	guibg=#806060	gui=NONE
    hi PmenuSbar	guifg=fg	guibg=#c0c0c0	gui=NONE
    hi PmenuThumb	guifg=fg	guibg=#c0e080	gui=NONE
    hi TabLine		guifg=fg	guibg=#c0c0c0	gui=NONE
    hi TabLineFill	guifg=fg	guibg=#c0c0c0	gui=NONE
    hi TabLineSel	guifg=fg	guibg=NONE	gui=NONE
    hi CursorColumn	guifg=NONE	guibg=#f0b090
    hi CursorLine	guifg=NONE	guibg=NONE	gui=underline
    hi MatchParen	guifg=NONE	guibg=#c0e080
  endif

  " LIGHT COLOR DEFINE END





" ===== COLOR SCHEME END =====
" vim: sw=2
