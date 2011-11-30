" Vim Color File
" Name:       bubblegum.vim
" Version:    0.1
" Maintainer: baskerville <nihilhill *at* gmail *dot* com>
"
" Based on xoria256.

set background=dark
hi clear

if exists("syntax on")
    syntax reset
endif

let g:colors_name="bubblegum"

"
" preferred groups
" (see `:h w18`)
"
hi Normal          ctermfg=248    ctermbg=235    cterm=none
hi Comment         ctermfg=243

" yellow
hi Constant        ctermfg=180
hi String          ctermfg=180
hi Character       ctermfg=142
hi Number          ctermfg=179
hi Boolean         ctermfg=144
hi Float           ctermfg=179

" pink
hi Identifier      ctermfg=181
hi Function        ctermfg=182

" blue
hi Statement       ctermfg=110
hi Conditional     ctermfg=110
hi Repeat          ctermfg=110
hi Label           ctermfg=110
hi Operator        ctermfg=110
hi Keyword         ctermfg=110
hi Exception       ctermfg=110

" green
hi PreProc         ctermfg=108
hi Include         ctermfg=108
hi Define          ctermfg=108
hi Macro           ctermfg=108
hi PreCondit       ctermfg=108

" purple
hi Type            ctermfg=146
hi StorageClass    ctermfg=146
hi Structure       ctermfg=146
hi Typedef         ctermfg=146

" red
hi Special         ctermfg=174
hi SpecialChar     ctermfg=174
hi Tag             ctermfg=174
hi Delimiter       ctermfg=174
hi SpecialComment  ctermfg=174
hi Debug           ctermfg=174

hi Underlined      ctermfg=fg
hi Ignore          ctermfg=236
hi Error           ctermfg=231    ctermbg=167
hi Todo            ctermfg=139    ctermbg=bg     cterm=none

"
" minor groups
"
hi StatusLine      ctermfg=fg     ctermbg=236    cterm=none
hi StatusLineNC    ctermfg=243    ctermbg=236    cterm=none
hi Pmenu           ctermfg=fg     ctermbg=236
hi PmenuSel        ctermfg=231    ctermbg=243
hi PmenuSbar       ctermfg=231    ctermbg=243
hi WildMenu        ctermfg=71     ctermbg=236    cterm=none
hi Visual          ctermfg=fg     ctermbg=bg     cterm=reverse
hi VertSplit       ctermfg=243    ctermbg=236    cterm=none
hi LineNr          ctermfg=243

hi Title           ctermfg=109
hi SpecialKey      ctermfg=136
hi NonText         ctermfg=243
hi MatchParen      ctermfg=16     ctermbg=72
hi Directory       ctermfg=103

hi ErrorMsg        ctermfg=210    ctermbg=bg
hi WarningMsg      ctermfg=140
hi MoreMsg         ctermfg=72
hi ModeMsg         ctermfg=210

hi Search          ctermfg=16     ctermbg=179     cterm=none
hi IncSearch       ctermfg=231    ctermbg=168     cterm=none
hi Question        ctermfg=38

hi Folded          ctermfg=231    ctermbg=243
hi FoldColumn      ctermfg=231    ctermbg=243
hi SignColumn      ctermfg=231    ctermbg=243
hi ColorColumn     ctermfg=16     ctermbg=243

hi CursorColumn    ctermbg=236    cterm=none
hi CursorLine      ctermbg=236    cterm=none

hi vimFold         ctermfg=243
hi vimCommentTitle ctermfg=fg
hi helpHyperTextJump ctermfg=74

hi htmlTag         ctermfg=147
hi htmlEndTag      ctermfg=147
hi htmlTagName     ctermfg=175
hi htmlString      ctermfg=144

hi diffFile        ctermfg=243
hi diffLine        ctermfg=243
hi diffAdded       ctermfg=107
hi diffRemoved     ctermfg=175
hi diffChanged     ctermfg=179

hi diffAdd         ctermfg=16     ctermbg=149
hi diffDelete      ctermfg=231    ctermbg=fg
hi diffText        ctermfg=16     ctermbg=216
hi diffChange      ctermfg=16     ctermbg=210
hi diffOldLine     ctermfg=104

hi SpellBad        ctermfg=210    ctermbg=bg      cterm=underline
hi SpellCap        ctermfg=174    ctermbg=bg      cterm=underline
hi SpellRare       ctermfg=181    ctermbg=bg      cterm=underline
hi SpellLocal      ctermfg=180    ctermbg=bg      cterm=underline

hi mkdCode         ctermfg=243
hi mkdURL          ctermfg=111
hi mkdLink         ctermfg=181
