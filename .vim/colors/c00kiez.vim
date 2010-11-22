" c00kies Vim Color Theme
" c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License
" $date -> Sunday 24 Jan 2010 
" 
" This is inspired by Vibrantink and Mustang color themes
" 

"set background=dark
hi clear
if exists("syntax_on")
   syntax reset
endif

let colors_name = "c00kiez"

" Vim >= 7.0 specific colors
if version >= 700
  highlight CursorLine		ctermbg=236
  highlight CursorColumn	ctermbg=236
  highlight MatchParen		ctermfg=157 ctermbg=237	cterm=bold
  highlight Pmenu			ctermfg=255 ctermbg=238
  highlight PmenuSel		ctermfg=0	ctermbg=148
  highlight SpellCap		cterm=NONE	ctermbg=21
  highlight SpellLocal		cterm=NONE	ctermbg=36
  highlight SpellRare		cterm=NONE	ctermbg=33
  highlight SpellBad		cterm=NONE	ctermbg=88
  highlight PmenuThumb		cterm=BOLD  ctermfg=87
  highlight PmenuSbar		cterm=BOLD  ctermfg=83
endif

set t_Co=256
highlight Normal	ctermfg=White ctermbg=Black  
highlight Cursor	ctermfg=Black ctermbg=Yellow  
highlight Keyword	ctermfg=202 
highlight Define	ctermfg=202 
highlight Comment	ctermfg=Cyan 
highlight Type		ctermfg=White  
highlight Constant	ctermfg=208 
highlight Function	ctermfg=220  
highlight Include	ctermfg=220  
highlight Statement	ctermfg=202  
highlight String	ctermfg=82 
highlight Special	ctermfg=208
highlight PreProc	ctermfg=230
highlight Number	ctermfg=208
highlight Boolean	ctermfg=148
highlight LineNr	ctermfg=244 ctermbg=232
highlight Todo		ctermbg=245 ctermfg=245
highlight NonText	ctermfg=244 ctermbg=235
highlight VertSplit ctermfg=238 ctermbg=238
highlight Title		ctermfg=254 cterm=bold
highlight rubyStringDelimiter	ctermfg=82 
highlight rubyInterpolation		ctermfg=White 
highlight rubyPseudoVariable	ctermfg=66 
highlight pythonOperator		ctermfg=103
highlight rubySymbol	ctermfg=66  
highlight Identifier	ctermfg=White  
highlight CursorLine	cterm=NONE ctermbg=235 
highlight StatusLine	ctermfg=253 ctermbg=238 cterm=italic
highlight StatusLineNC	ctermfg=246 ctermbg=238
highlight SpecialKey	ctermfg=244 ctermbg=236
" TODO: highlight Visual    ctermfg=254 ctermbg=4
" TODO: highlight Search ctermbg=White 
" TODO: highlight Folded ctermbg=237 ctermfg=157

