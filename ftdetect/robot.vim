"=============================================================================
" File:         ftdetect/robot.vim
"------------------------------------------------------------------------
" Description:
"   Filetype detection plugin for Robot files.
" WARNING:
"   Overrides all default file type checks.
"------------------------------------------------------------------------
" Installation:
"   - Requires Vim7+
"   - Drop this file into {rtp}/ftdetect
"=============================================================================
let s:cpo_save=&cpo
set cpo&vim

au BufNewFile,BufRead *.txt call s:FTrobot()
au BufNewFile,BufRead *.resource call s:FTrobot()
au BufNewFile,BufRead *.robot setlocal filetype=robot

func! s:FTrobot()
    let b:topl = getline(1)
    if (exists("g:robot_syntax_for_txt") && g:robot_syntax_for_txt)
    \ || b:topl =~ '\*\*\*.\{-}\*\*\*'
    \ || b:topl =~ '^# -\*- coding: robot -\*-$'
        setlocal filetype=robot
    endif
endfunc

"------------------------------------------------------------------------
let &cpo=s:cpo_save
" vim700: set fdm=marker:
