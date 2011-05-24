" c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License
" stole some cookies from meqif and rezza

"""""""""""""
" Functions "
"""""""""""""

" Add timestamp to rc files
fun! <SID>UpdateRcHeader()
    let l:c=col(".")
    let l:l=line(".")
    1,10s-\(Most recent update:\).*-\="Most recent update: ".strftime("%c")-
    call cursor(l:l, l:c)
endfun

" Set up the status line
fun! <SID>SetStatusLine()
    let l:s1="%-3.3n\\ %f\\ %h%m%r%w"
    let l:s2="[%{strlen(&filetype)?&filetype:'?'},%{&encoding},%{&fileformat}]"
    let l:s3="%=\\ 0x%-8B\\ \\ %-14.(%l,%c%V%)\\ %<%P"
    execute "set statusline=" . l:s1 . l:s2 . l:s3
endfun

" Copy/Paste from Word*doc files is a mess
fun! FixInvisiblePunctuation()
    silent! %s/\%u2018/'/g
    silent! %s/\%u2019/'/g
    silent! %s/\%u2026/.../g
    silent! %s/\%uf0e0/->/g
    silent! %s/\%u0092/'/g
    silent! %s/\%u2013/--/g
    silent! %s/\%u2014/--/g
    silent! %s/\%u201C/"/g
    silent! %s/\%u201D/"/g
    silent! %s/\%u0052\%u20ac\%u2122/'/g
    silent! %s/\%ua0/ /g
    retab
endfun

""""""""""""
" Settings "
""""""""""""

" show invisible chars
set listchars=eol:¬,tab:>-,trail:~,extends:>,precedes:<
set nolist

" Setup a funky statusline
set laststatus=2
call <SID>SetStatusLine()

" Encoding
set termencoding=utf-8
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz

" No visual bell
set novisualbell
set noerrorbells

" Basic options
set nocompatible
set history=50
set viminfo='1000,f1,:1000,/1000
set shortmess+=aI
set showmode
set showcmd
set modeline
set wildmenu
set wildignore+=*.o,*~,.lo
set suffixes+=.in,.a,.1

" Spell Checking
set spell spelllang=en,el

" folding
set foldenable
set foldmethod=marker
set foldmarker={,}
set foldlevel=0

" turn off highlighting for a searched term once you hit return
nnoremap <CR> :noh<CR>/<BS>

" Indent, tab, and wrap settings
set shiftwidth=4
set softtabstop=4
set tabstop=4
set expandtab
set shiftround
set autoindent
set smartindent
set textwidth=80
set nowrap
set formatoptions+=nl
set whichwrap=h,l,~,<,>,[,]
set backspace=eol,start,indent

" When scrolling off-screen do so 3 lines at a time
set scrolloff=2

" show line numbers
set number

" Search options
set hlsearch
set smartcase
set incsearch
set showmatch
set dictionary=/usr/share/dict/words

" Show full tags when doing search completion
set showfulltag

" Set bracket matching and comment formats
set matchpairs+=<:>
set comments-=s1:/*,mb:*,ex:*/
set comments+=s:/*,mb:**,ex:*/
set comments+=fb:*
set comments+=b:\"
set comments+=n::

" Keep backup of edited files
set backup
set writebackup
set backupdir=~/.backups/

" Use css for generated html files
let html_use_css=1

" Set taglist plugin options
let Tlist_Use_Right_Window = 1
let Tlist_Exit_OnlyWindow = 1
let Tlist_Enable_Fold_Column = 0
let Tlist_Compact_Format = 1
let Tlist_File_Fold_Auto_Close = 0
let Tlist_Inc_Winwidth = 1

" yanking history settings
let g:yankring_enabled = 1
let g:yankring_share_between_instances = 1
let g:yankring_ignore_duplicate = 1
let g:yankring_max_history = 100
let g:yankring_history_dir = "/tmp"
let g:yankring_history_file = ".yankring_history"

" Gist
let g:gist_clip_command = 'xclip'
let g:gist_detect_filetype = 1

" Basic abbreviations
abbreviate teh the
iab DATE <C-R>=strftime("%B %d, %Y (%A, %H:%Mh)")<CR>

" Allows writing to files with root privileges
cmap w!! %!sudo tee > /dev/null %

" Enable filetype detection
filetype on
filetype plugin on
filetype indent on

""""""""""""""""
" Autocommands "
""""""""""""""""

" Clear previous autocmds, stops a few errors creeping in.
autocmd!

" When editing a file, always jump to the last known cursor
" position. Don't do it when the position is invalid or when
" inside an event handler (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is
" the default position when opening a file.
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif

"Clean trailing whitespace
autocmd BufWritePre * :%s/\s\+$//e

" Set comment characters for common languages
autocmd FileType python,sh,bash,zsh,ruby,perl let StartComment="#" | let EndComment=""
autocmd FileType html let StartComment="<!--" | let EndComment="-->"
autocmd FileType php,c,javascript let StartComment="//" | let EndComment=""
autocmd FileType cpp,java let StartComment="/*" | let EndComment="*/"
autocmd FileType vim let StartComment="\"" | let EndComment=""

" C file specific options
autocmd FileType c,cpp set cindent
autocmd FileType c,cpp set formatoptions+=ro
"autocmd FileType c,cpp set makeprg=gcc\ -Wall\ -O2\ -o\ %<\ %

" HTML abbreviations
autocmd FileType html,php imap bbb <br />

" Compile and run keymappings
autocmd FileType c,cpp map <F5> :!./%:r<CR>
autocmd FileType c,cpp :ab #d #define
autocmd FileType c,cpp :ab #i #include
autocmd FileType sh,php,perl,python map <F5> :!./%<CR>
autocmd FileType c,cpp map <F6> :make %:r<CR>
autocmd FileType php map <F6> :!php &<CR>
autocmd FileType python map <F6> :!python %<CR>
autocmd FileType perl map <F6> :!perl %<CR>
autocmd FileType html,xhtml map <F5> :!chromium%<CR>
autocmd FileType java map <F6> :!javac %<CR>
autocmd FileType tex map <F5> :!evince "%:r".pdf<CR>
autocmd FileType tex map <F6> :!pdflatex %<CR>

" MS Word document reading
autocmd BufReadPre *.doc set ro
autocmd BufReadPost *.doc %!antiword "%"

" Arduino stuff
autocmd BufReadPre *.pde set filetype=c

" nasm
autocmd BufReadPre *.nasm set filetype=asm

" SVG
autocmd BufReadPre *.svg set filetype=svg

" Ragel
autocmd BufRead,BufNewFile *.rl set filetype=ragel

" turn off any existing search on exit
autocmd VimEnter * nohlsearch

"""""""""""""""
" Keymappings "
"""""""""""""""

" match open closing braces
:inoremap ( ()<ESC>i
:inoremap { {}<ESC>i
:inoremap [ []<ESC>i

" hardcore mode
nnoremap <up> <nop>
nnoremap <down> <nop>
nnoremap <left> <nop>
nnoremap <right> <nop>
inoremap <up> <nop>
inoremap <down> <nop>
inoremap <left> <nop>
inoremap <right> <nop>

" Omni-completion with Ctrl-Space
inoremap <expr> <C-Space> pumvisible() \|\| &omnifunc == '' ?
\ "\<lt>C-n>" :
\ "\<lt>C-x>\<lt>C-o><c-r>=pumvisible() ?" .
\ "\"\\<lt>c-n>\\<lt>c-p>\\<lt>c-n>\" :" .
\ "\" \\<lt>bs>\\<lt>C-n>\"\<CR>"
imap <C-@> <C-Space>

" Easy pasting from the X clipboard
imap <C-V> <ESC>:r!xclip -sel clipboard -o<CR>i

" Easy help
map! <F1> <C-C><F1>
vmap <F1> <C-C><F1>
omap <F1> <C-C><F1>
nnoremap <F1> :help<Space>
map <F7> :!python -c 'help()'<left><left>

" Show nonprinting characters
map <F2> :set list!<CR>
inoremap <F2> <ESC>:set list!<CR>a

" Toggle between windows
nnoremap <F3> <C-W>W
nnoremap <F4> <C-W>w

" Easy tabswitch
map <C-Tab> :tabNext<cr>

" Swap around between buffers
nnoremap <C-N> :bn<CR>
nnoremap <C-I> :bn<CR>
nnoremap <C-P> :bp<CR>

" Toggle taglist script
map <F8> :Tlist<CR>

" Toggle line numbers
map <F9> :set number!<CR>

" Toggle dark/light default colour theme for shitty terms
map <F11> :let &background = ( &background == "dark" ? "light" : "dark" )<CR>

" Leave insert mode without reaching for the esc key
imap jj <ESC>

"""""""""""""""""""""""""""""""""""""""""""""""
" colorscheme selection and syntax hilighting "
"""""""""""""""""""""""""""""""""""""""""""""""
syntax on
set synmaxcol=80
set popt+=syntax:y

if (&term =~ 'linux')
    set nocursorline
    set t_Co=16
    colorscheme darktango
else
    "set mouse=a
    set t_Co=256
    colorscheme mirocookies
endif

" vim: nofoldenable
