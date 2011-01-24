" mirocookies colours
" Author:   Kanakarakis c00kiemon5ter Ivan
" URL:      http://github.com/c00kiemon5ter
"
" Based on miromiro colours
" Author:   jason ryan
" URL:      http://jasonwryan.com
"

set background=dark
hi clear
if exists("syntax on")
    syntax reset
endif

let g:color_name="mirocookies"
" Normal colors  --- 
hi Normal          ctermfg=15
hi Ignore          ctermfg=8
hi Comment         ctermfg=DarkCyan
hi LineNr          ctermfg=8
hi Float           ctermfg=Yellow
hi Include         ctermfg=Magenta
hi Define          ctermfg=Green
hi Macro           ctermfg=Cyan
hi PreProc         ctermfg=DarkGreen
hi PreCondit       ctermfg=Cyan
hi NonText         ctermfg=DarkCyan
hi Directory       ctermfg=DarkCyan
hi SpecialKey      ctermfg=DarkYellow
hi Type            ctermfg=DarkCyan
hi String          ctermfg=Green
hi Constant        ctermfg=Cyan
hi Special         ctermfg=DarkGreen
hi SpecialChar     ctermfg=DarkRed 
hi Number          ctermfg=14
hi Identifier      ctermfg=Cyan
hi Conditional     ctermfg=14
hi Repeat          ctermfg=DarkRed 
hi Statement       ctermfg=Blue
hi Label           ctermfg=Cyan
hi Operator        ctermfg=Yellow
hi Keyword         ctermfg=DarkRed   
hi StorageClass    ctermfg=DarkYellow  
hi Structure       ctermfg=Magenta
hi Typedef         ctermfg=DarkCyan
hi Function        ctermfg=DarkYellow
hi Exception       ctermfg=Red
hi Underlined      ctermfg=Blue
hi Title           ctermfg=Yellow   
hi Tag             ctermfg=DarkYellow
hi Delimiter       ctermfg=DarkBlue  
hi SpecialComment  ctermfg=DarkRed 
hi Boolean         ctermfg=Yellow
hi Todo            ctermfg=DarkRed 
hi MoreMsg         ctermfg=Cyan
hi ModeMsg         ctermfg=Cyan
hi Debug           ctermfg=Red
hi MatchParen      ctermfg=8            ctermbg=White
hi ErrorMsg        ctermfg=White        ctermbg=Red
hi WildMenu        ctermfg=Magenta      ctermbg=15
hi Folded          cterm=reverse        ctermfg=DarkCyan    ctermbg=Black
"hi Search          ctermfg=White        ctermbg=Cyan
hi Search          ctermfg=Black        ctermbg=Yellow
hi IncSearch       ctermfg=Red          ctermbg=White
hi WarningMsg      ctermfg=White        ctermbg=Red
hi Question        ctermfg=DarkGreen    ctermbg=15
hi Pmenu           ctermfg=Green        ctermbg=DarkCyan
hi PmenuSel        ctermfg=Red          ctermbg=Cyan
hi Visual          ctermfg=DarkGrey     ctermbg=15
hi StatusLine      ctermfg=Black        ctermbg=White
hi StatusLineNC    ctermfg=8            ctermbg=Black

" Specific for Vim script  --- 
hi vimCommentTitle ctermfg=DarkGreen
hi vimFold         ctermfg=Black    ctermbg=15

" Specific for help files  --- 
hi helpHyperTextJump ctermfg=DarkYellow

" JS numbers only ---
hi javaScriptNumber ctermfg=DarkYellow 

" Special for HTML ---
hi htmlTag        ctermfg=DarkCyan
hi htmlEndTag     ctermfg=DarkCyan
hi htmlTagName    ctermfg=DarkYellow

" Specific for Perl  --- 
hi perlSharpBang  ctermfg=DarkGreen  term=standout
hi perlStatement  ctermfg=Cyan
hi perlStatementStorage ctermfg=Red
hi perlVarPlain   ctermfg=Yellow
hi perlVarPlain2  ctermfg=DarkYellow

" Specific for Ruby  --- 
hi rubySharpBang  ctermfg=DarkGreen  term=standout

" Specific for diff  --- 
hi diffLine       ctermfg=DarkGreen 
hi diffOldLine    ctermfg=Green      
hi diffOldFile    ctermfg=Green      
hi diffNewFile    ctermfg=Green      
hi diffAdded      ctermfg=Blue 
hi diffRemoved    ctermfg=Red        
hi diffChanged    ctermfg=DarkCyan       

" Spell checking  --- 
if version >= 700
    hi clear SpellBad
    hi clear SpellCap
    hi clear SpellRare
    hi clear SpellLocal
    hi SpellBad    cterm=underline
    hi SpellCap    cterm=underline
    hi SpellRare   cterm=underline
    hi SpellLocal  cterm=underline
endif
" vim: foldmethod=marker foldmarker={,}:
