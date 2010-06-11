" Vim color scheme
" Name: ristoink.vim
" Author: Christopher Sexton
" Based on the vivid Chalk theme by Tim Pope 
" Based on the Vibrank Ink theme for TextMate
" Distributable under the same terms as Vim itself (see :help license)

hi clear
if exists("syntax_on")
	syntax reset
endif

let colors_name = "ristoink"

if has("gui_running")
	set background=dark
else
	if has("win32") || has("win64")
		set t_Co=16
	elseif $TERM_PROGRAM == 'Apple_Terminal'
		set t_Co=16
	elseif $TERM_PROGRAM == 'iTerm.app'
		set t_Co=256
	elseif has("mac")
		set t_Co=16
	elseif &term == "xterm-256color"
		set t_Co=256
	elseif &term == "xterm-color"
		set t_Co=256
	elseif &term == "xterm"
		set t_Co=256
	elseif &term == "rxvt-unicode"
		set t_Co=256
	else
		set tCo=16
	end
endif
set t_Co=256

if ((&t_Co == 256) || has("gui_running"))
	"GUI / 256 colors
	highlight Normal		  guifg=#EEEEEE guibg=Black ctermfg=White ctermbg=234
	highlight Comment		  guifg=#AA66FF ctermfg=92
	highlight Constant	  guifg=#339999 ctermfg=73 cterm=none
	"highlight Cursor		   guifg=Black guibg=White ctermfg=Black ctermbg=White
	highlight CursorColumn  guifg=NONE guibg=#1A1A8A ctermbg=DarkBlue
	highlight CursorLine	  guifg=NONE guibg=#1A1A8A ctermbg=DarkBlue
	highlight Directory	  none
	highlight ErrorMsg	  guifg=Red guibg=Black ctermfg=Red ctermbg=Black
	highlight FoldColumn	  none
	highlight Folded		  guifg=#AAAA77 guibg=#111111 ctermfg=DarkGrey ctermbg=Black
	highlight Identifier	  guifg=#FFCC00 ctermfg=202 cterm=none
	highlight IncSearch	  guifg=White guibg=Black ctermfg=White ctermbg=Yellow
	highlight Keyword		  guifg=#FF6600 ctermfg=202
	highlight LineNr		  guifg=#333333 guibg=Black ctermfg=144 ctermbg=16
	highlight MoreMsg		  guifg=#00AA00 ctermfg=Green
	highlight NonText		  guifg=#404040 ctermfg=DarkGrey
	"highlight Pmenu		  guifg=White guibg=#000099 gui=bold ctermfg=White ctermbg=DarkBlue cterm=none
	"highlight PmenuSbar	  guibg=#5555ff ctermbg=Black
	"highlight PmenuSel		 guifg=White guibg=#5555ff gui=bold ctermfg=White ctermbg=Blue cterm=none
	"highlight PmenuThumb	  guibg=White ctermbg=Blue
	highlight Pmenu		  guifg=White guibg=#000099 gui=bold ctermfg=White ctermbg=238 cterm=none
	highlight PmenuSbar	  guibg=#5555ff cterm=BOLD ctermfg=83 ctermbg=Black
	highlight PmenuSel	  guifg=White guibg=#5555ff gui=bold ctermfg=Black ctermbg=148 cterm=none
	highlight PmenuThumb	  guibg=White cterm=BOLD ctermfg=87
	highlight PreProc		  guifg=#AAFFFF ctermfg=75 cterm=none
	highlight Question	  none
	highlight Regexp		  guifg=#44B4CC ctermfg=Cyan
	highlight Search		  guifg=Black ctermfg=Black guibg=Yellow1 ctermbg=Yellow
	highlight SignColumn	  guifg=#AAAA77 guibg=#111111 ctermfg=Yellow ctermbg=Black
	highlight Special		  guifg=#33AA00 ctermfg=Green
	highlight SpecialKey	  guifg=#202020 ctermfg=DarkGrey
	highlight SpellBad	  cterm=none ctermbg=88 ctermfg=White
	highlight SpellCap	  cterm=none ctermbg=21 ctermfg=White
	highlight SpellLocal	  cterm=none ctermbg=36 ctermfg=White
	highlight SpellRare	  cterm=none ctermbg=33 ctermfg=White
	"highlight SpellBad	  cterm=underline ctermbg=none ctermfg=88
	"highlight SpellCap	  cterm=underline ctermbg=none ctermfg=21
	"highlight SpellLocal	  cterm=underline ctermbg=none ctermfg=36
	"highlight SpellRare	  cterm=underline ctermbg=none ctermfg=33
	highlight Statement	  guifg=#FF6600 gui=none ctermfg=214 cterm=none
	highlight StatusLine	  guibg=#111111 guifg=White gui=italic ctermfg=231 ctermbg=235 cterm=italic
	"highlight StatusLine	  guibg=#111111 guifg=White gui=italic ctermfg=231 ctermbg=235 cterm=none
	highlight StatusLineNC  guibg=#111111 guifg=#AAAA77 gui=none ctermfg=235 ctermbg=144
	highlight String		  guifg=#66FF00 ctermfg=34 cterm=none
	highlight TabLine		  guifg=#BBBBBB guibg=#333333
	highlight TabLineFill   guifg=#BBBBBB guibg=#808080
	highlight TabLineSel	  guibg=Black guifg=White ctermfg=White ctermbg=Black
	highlight Title		  guifg=Magenta ctermfg=Magenta
	highlight Type		  guifg=#AAAA77 gui=none ctermfg=220
	highlight vertsplit	  guibg=#111111 guifg=#AAAA77 gui=none ctermbg=235 ctermfg=235
	"highlight Visual		   guibg=#050573 ctermbg=17 cterm=none
	highlight Visual		  guibg=#294134 ctermbg=DarkBlue ctermfg=White cterm=none
	highlight VisualNOS	  guifg=#444444 gui=none term=none
	highlight WarningMsg	  guifg=Red ctermfg=Red
	highlight WildMenu	  guifg=Black guibg=#FFFF00 gui=bold ctermfg=Black ctermbg=Yellow cterm=none

	highlight rubyMethod			guifg=#DDE93D ctermfg=184
	highlight railsUserClass		guifg=#AAAAAA
	highlight rubyNumber			guifg=#CCFF33
	highlight railsUserMethod		guifg=#AACCFF
	"highlight railsMethod		  guifg=#EE1122 ctermfg=1
else
	" cterm 16
	highlight Comment		  ctermfg=DarkMagenta
	highlight Constant	  ctermfg=Cyan		  cterm=none
	highlight Cursor		  ctermfg=Black		  ctermbg=White
	highlight CursorColumn  ctermbg=DarkBlue
	highlight CursorLine	  ctermbg=DarkBlue cterm=none
	highlight Directory	  none
	highlight ErrorMsg	  ctermfg=NONE		  ctermbg=Red
	highlight FoldColumn	  none
	highlight Folded		  ctermfg=DarkGrey	  ctermbg=Black
	highlight Identifier	  ctermfg=Grey	cterm=none
	highlight IncSearch	  ctermfg=White		  ctermbg=Black
	highlight Keyword		  ctermfg=Yellow
	highlight LineNr		  ctermfg=DarkGrey	  ctermbg=Black
	highlight MoreMsg		  ctermfg=Green
	highlight NonText		  ctermfg=DarkGrey
	highlight Pmenu		  ctermfg=White		  ctermbg=DarkBlue cterm=none
	highlight PmenuSbar	  ctermbg=Grey
	highlight PmenuSel	  ctermfg=White		  ctermbg=Blue	   cterm=none
	highlight PmenuThumb	  ctermbg=Blue
	highlight PreProc		  ctermfg=DarkCyan	  cterm=none
	highlight Question	  ctermfg=Red
	highlight Regexp		  ctermfg=Cyan
	highlight Search		  ctermfg=NONE		  ctermbg=Yellow
	highlight SignColumn	  ctermfg=Yellow	  ctermbg=Black
	highlight Special		  ctermfg=Green
	highlight SpecialKey	  ctermfg=DarkGrey
	highlight Statement	  ctermfg=Yellow	  cterm=none
	highlight StatusLine	  ctermfg=DarkGrey	  ctermbg=Black		cterm=none
	highlight StatusLineNC  ctermfg=Grey		  ctermbg=DarkGrey
	highlight String		  ctermfg=LightGreen					cterm=none
	highlight TabLineFill   none
	highlight TabLineSel	  ctermfg=White		  ctermbg=Black
	highlight Title		  ctermfg=Magenta
	highlight Type		  ctermfg=Yellow
	highlight vertsplit	  ctermbg=Black		  ctermfg=DarkGrey
	highlight Visual		  ctermbg=DarkBlue	  ctermfg=White
	highlight VisualNOS	  none
	highlight WarningMsg	  ctermfg=Red
	highlight WildMenu	  ctermfg=Black ctermbg=Yellow cterm=none
endif 

" For the showmark plugin
" http://www.vim.org/scripts/script.php?script_id=152
" Highlighting: Setup some nice colours to show the mark positions.
highlight default ShowMarksHLl guifg=#AAAA77 guibg=#111111 gui=bold ctermfg=DarkGrey ctermbg=Black
highlight default ShowMarksHLu guifg=#AAAA77 guibg=#111111 gui=bold ctermfg=DarkGrey ctermbg=Black
highlight default ShowMarksHLo guifg=#AAAA77 guibg=#111111 gui=bold ctermfg=DarkGrey ctermbg=Black
highlight default ShowMarksHLm guifg=#AAAA77 guibg=#111111 gui=bold ctermfg=DarkGrey ctermbg=Black

" For the project plugin
highlight projectText guifg=#CECE9A guibg=Black gui=bold ctermfg=DarkGrey ctermbg=Black
highlight projectError guifg=DarkRed guibg=Black gui=bold ctermfg=DarkRed ctermbg=Black
highlight projectFoldText guifg=Blue guibg=Black gui=bold ctermfg=DarkGrey ctermbg=Black

" For the VimOutliner plugin
highlight OL1 ctermfg=15 guifg=white
highlight OL2 ctermfg=12 guifg=DarkViolet
highlight OL3 ctermfg=9 guifg=lightblue
highlight OL4 ctermfg=13 guifg=darkviolet
highlight OL5 ctermfg=15 guifg=white

" For trailing whitespace
"highlight ExtraWhitespace ctermbg=darkgreen guibg=darkgreen  


" Links
high link Directory		Identifier
high link FoldColumn	Folded
high link Question		MoreMsg
high link railsMethod		  PreProc
high link rubyDefine		  Keyword
high link rubySymbol		  Constant
high link rubyAccess		  rubyMethod
high link rubyAttribute		  rubyMethod
high link rubyEval			  rubyMethod
high link rubyException		  rubyMethod
high link rubyInclude		  rubyMethod
high link rubyStringDelimiter rubyString
high link rubyRegexp		  Regexp
high link rubyRegexpDelimiter rubyRegexp
"high link rubyConstant		   Variable
"high link rubyGlobalVariable  Variable
"high link rubyClassVariable   Variable
"high link rubyInstanceVariable Variable
high link javascriptRegexpString Regexp
high link javascriptNumber	  Number
high link javascriptNull	  Constant
high link projectDescription projectText
high link projectWhiteError projectError
high link projectDescriptionDir projectText
high link projectDirectory projectText
high link projectScriptinout projectText
high link projectComment projectText
high link projectCD projectText
high link projectFilterError projectError
high link projectFilter projectText
high link projectFilterRegexp projectText
high link projectFilterEntry projectText
high link projectFlags projectText
high link projectFlagsEntry projectText
high link projectFlagsValues projectText
high link projectFlagsError projectError
high link markdownCodeBlock String

if !has("gui_mac")
	" Mac GUI degrades italics to ugly underlining.
	highlight Comment gui=NONE
	highlight railsUserClass	gui=NONE
	highlight railsUserMethod gui=NONE
	highlight StatusLine gui=NONE
endif

