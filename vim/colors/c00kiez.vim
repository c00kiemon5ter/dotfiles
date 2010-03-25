" c00kies Vim Color Theme
" c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License
" $date -> Sunday 24 Jan 2010 
" 
" This is inspired by Vibrantink and Mustang color themes
" 

set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let g:colors_name = "mrJesus"

" Vim >= 7.0 specific colors
if version >= 700
  highlight CursorLine guibg=#2d2d2d ctermbg=236
  highlight CursorColumn guibg=#2d2d2d ctermbg=236
  highlight MatchParen guifg=#d0ffc0 guibg=#2f2f2f gui=bold ctermfg=157 ctermbg=237 cterm=bold
  highlight Pmenu guifg=#ffffff guibg=#444444 ctermfg=255 ctermbg=238
  highlight PmenuSel guifg=#000000 guibg=#b1d631 ctermfg=0 ctermbg=148
endif

set t_Co=256
highlight Normal ctermfg=White ctermbg=Black guifg=White guibg=Black
highlight Cursor ctermfg=Black ctermbg=Yellow guifg=Black guibg=Yellow
highlight Keyword ctermfg=202 guifg=#FF6600
highlight Define ctermfg=202 guifg=#FF6600
highlight Comment ctermfg=Cyan guifg=#9933CC
highlight Type ctermfg=White guifg=White gui=NONE
highlight rubySymbol ctermfg=66 guifg=#339999 gui=NONE
highlight Identifier ctermfg=White guifg=White gui=NONE
highlight rubyStringDelimiter ctermfg=82 guifg=#66FF00
highlight rubyInterpolation ctermfg=White guifg=White
highlight rubyPseudoVariable ctermfg=66 guifg=#339999
highlight Constant ctermfg=208 guifg=#ff9800
highlight Function ctermfg=220 guifg=#FFCC00 gui=NONE
highlight Include ctermfg=220 guifg=#FFCC00 gui=NONE
highlight Statement ctermfg=202 guifg=#FF6600 gui=NONE
highlight String ctermfg=82 guifg=#66FF00
" TODO: highlight Search ctermbg=White guibg=White
highlight CursorLine cterm=NONE ctermbg=235 guibg=#323300
highlight StatusLine guifg=#d3d3d5 guibg=#444444 gui=italic ctermfg=253 ctermbg=238 cterm=italic
highlight StatusLineNC guifg=#939395 guibg=#444444 gui=none ctermfg=246 ctermbg=238
highlight LineNr guifg=#808080 guibg=#000000 gui=none ctermfg=244 "ctermbg=232
" TODO: highlight Folded guibg=#384048 guifg=#a0a8b0 gui=none ctermbg=237 ctermfg=157
highlight Special guifg=#ff9800 gui=none ctermfg=208
highlight SpecialKey guifg=#808080 guibg=#343434 gui=none ctermfg=244 ctermbg=236
highlight PreProc guifg=#faf4c6 gui=none ctermfg=230
highlight Number guifg=#ff9800 gui=none ctermfg=208
highlight Boolean guifg=#b1d631 gui=none ctermfg=148
highlight Todo guifg=#8f8f8f gui=italic ctermbg=245 "ctermfg=245
highlight pythonOperator guifg=#7e8aa2 gui=none ctermfg=103
highlight NonText guifg=#808080 guibg=#303030 gui=none ctermfg=244 ctermbg=235
highlight VertSplit guifg=#444444 guibg=#444444 gui=none ctermfg=238 ctermbg=238
highlight Title guifg=#f6f3e8 guibg=NONE gui=bold ctermfg=254 cterm=bold
" TODO: highlight Visual guifg=#faf4c6 guibg=#3c414c gui=none ctermfg=254 ctermbg=4

hi Macro         guifg=#FE8777
hi Operator      guifg=#518691
" Rainbow C/Cpp
hi cBracket      guifg=#E99DE9
hi hlLevel1      guifg=#f0f0f0
hi hlLevel2      guifg=#ebf1d2
hi hlLevel3      guifg=#e7f3b4
hi hlLevel4      guifg=#e2f596
hi hlLevel5      guifg=#def778
hi hlLevel6      guifg=#daf95a
hi hlLevel7      guifg=#d5fb3c
hi hlLevel8      guifg=#d1fd1e
hi hlLevel9      guifg=#cdff00
" Custom
hi MarkerConstant guifg=#808080
" Code-specific colors
hi htmlEndTag    guifg=#ffffff gui=none 
hi htmlLink      guifg=#ff3b77 gui=underline

