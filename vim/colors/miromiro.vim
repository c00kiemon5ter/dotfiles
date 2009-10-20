" miromiro colours
" Author:  jasonwryan
" URL:     http://jasonwryan.com

set background=dark
hi clear
if exists("syntax on")
    syntax reset
endif

let g:color_name="miromiro"
" Normal colors {{{1
hi Normal      cterm=none    ctermfg=gray
hi Ignore      cterm=bold    ctermfg=gray
hi Comment     cterm=bold    ctermfg=blue
hi LineNr      cterm=bold    ctermfg=black
hi Include     cterm=none    ctermfg=lightmagenta
hi Define      cterm=none    ctermfg=green
hi Macro       cterm=bold    ctermfg=green
hi PreProc     cterm=bold    ctermfg=green
hi PreCondit   cterm=bold    ctermfg=green
hi NonText     cterm=none    ctermfg=cyan
hi Directory   cterm=none    ctermfg=cyan
hi SpecialKey  cterm=none    ctermfg=yellow
hi Type        cterm=none    ctermfg=cyan
hi String      cterm=none    ctermfg=magenta
hi Constant    cterm=none    ctermfg=magenta
hi Special     cterm=none    ctermfg=yellow
hi Number      cterm=none    ctermfg=yellow
hi Identifier  cterm=none    ctermfg=green
hi Conditional cterm=none    ctermfg=green
hi Repeat      cterm=none    ctermfg=green
hi Statement   cterm=none    ctermfg=green
hi Label       cterm=none    ctermfg=green
hi Operator    cterm=none    ctermfg=green
hi Function    cterm=none    ctermfg=green
hi MatchParen  cterm=none    ctermfg=yellow     ctermbg=blue
hi ErrorMsg    cterm=none    ctermfg=black      ctermbg=lightgray
hi WildMenu    cterm=none    ctermfg=yellow     ctermbg=darkgray
hi Folded      cterm=reverse ctermfg=cyan       ctermbg=black
hi Search      cterm=none    ctermfg=red        ctermbg=white
hi IncSearch   cterm=none    ctermfg=red        ctermbg=white
hi WarningMsg  cterm=none    ctermfg=black      ctermbg=gray
hi Question    cterm=bold    ctermfg=lightgreen ctermbg=lightgreen
hi Pmenu       cterm=bold    ctermfg=green      ctermbg=green
hi PmenuSel    cterm=bold    ctermfg=yellow     ctermbg=red
hi Visual      cterm=bold    ctermfg=darkgray   ctermbg=white
" Specific for Vim script {{{1
hi vimCommentTitle cterm=none    ctermfg=lightgreen
hi vimFold         cterm=none    ctermfg=darkgray   ctermbg=gray
" Specific for help files {{{1
hi helpHyperTextJump ctermfg=darkyellow
" Specific for Perl {{{1
hi perlSharpBang        ctermfg=lightgreen cterm=bold term=standout
hi perlStatement        ctermfg=gray
hi perlStatementStorage ctermfg=white
hi perlVarPlain         ctermfg=gray
hi perlVarPlain2        ctermfg=gray
" Specific for Ruby {{{1
hi rubySharpBang ctermfg=lightgreen cterm=bold term=standout
" Specific for diff {{{1
hi diffLine    ctermfg=lightgreen cterm=bold
hi diffOldLine ctermfg=green      cterm=none
hi diffOldFile ctermfg=green      cterm=none
hi diffNewFile ctermfg=green      cterm=none
hi diffAdded   ctermfg=darkyellow cterm=none
hi diffRemoved ctermfg=red        cterm=none
hi diffChanged ctermfg=cyan       cterm=none
" Spell checking {{{1
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
" vim: foldmethod=marker foldmarker={{{,}}}:
