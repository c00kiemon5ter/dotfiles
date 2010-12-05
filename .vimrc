" c00kiemon5ter (ivan.kanak@gmail.com) ~ under c00kie License

" Don't be compatible with vi, this is Vim!
set nocompatible 

" Enable filetype settings
if has("eval")
	filetype on
	filetype plugin on
	filetype plugin indent on
endif

" Default encoding
set encoding=utf-8
set fileencoding=utf-8
scriptencoding utf-8
set langmap=ΑA,ΒB,ΨC,ΔD,ΕE,ΦF,ΓG,ΗH,ΙI,ΞJ,ΚK,ΛL,ΜM,ΝN,ΟO,ΠP,QQ,ΡR,ΣS,ΤT,ΘU,ΩV,WW,ΧX,ΥY,ΖZ,αa,βb,ψc,δd,εe,φf,γg,ηh,ιi,ξj,κk,λl,μm,νn,οo,πp,qq,ρr,σs,τt,θu,ωv,ςw,χx,υy,ζz
"set keymap=greek_utf-8 "switch with 'Ctrl+^' 

" Keep backup of edited files
set backup
set writebackup
set backupdir=~/.backups/

" Spell Checking
setlocal spell spelllang=en,el

" Syntax Highlighting
if has("syntax")
	syntax on
endif

" Syntax when printing
set popt+=syntax:y

" Gist
let g:gist_clip_command = 'xclip'
let g:gist_detect_filetype = 1

" When scrolling off-screen do so 3 lines at a time, not 1
set scrolloff=2

" assume the /g flag on :s substitutions to replace all matches in a line:
"set gdefault

" No visual bell
set novisualbell
set noerrorbells

" Show line numbers
set number
set numberwidth=2

" Automatically save before commands like :next and :make
set autowrite

" do auto indentation
set autoindent
set cindent
set smartindent

" Wrap text
set nowrap
" Wrap in these
set whichwrap+=<,>,[,]
"set nowrapscan

" Make backspace delete lots of things
set backspace=indent,eol,start

" Show us the command we're typing
set showcmd

" Speed up macros
set lazyredraw

" Place new window right of the current
set splitright

" Allow edit buffers to be hidden
set hidden

" Use the cool tab complete menu
set wildmenu
set wildignore+=*.o,*~,.lo
set suffixes+=.in,.a,.1

set dictionary=/usr/share/dict/words

" Ignore case
set ignorecase
"set infercase

" Highlight matching patterns
set showmatch
set matchpairs+=<:>
set matchtime=3

" Search conf : incremental, highlight
set incsearch
set hlsearch
" Show full tags when doing search completion
set showfulltag

" Minimum window height
set winminheight=1

" Always show statusbar
set laststatus=2

" Statusline Format :P
"set statusline=%f\ %2*%m\ %1*%h%r%=[%{&encoding}\ %{&fileformat}\ %{strlen(&ft)?&ft:'none'}\ %{getfperm(@%)}]\ 0x%B\ %12.(%c:%l/%L%)

" Tab conf 
set tabstop=4
set shiftwidth=4
set softtabstop=4
set expandtab

" Enable mouse 
"  [n]ormal
"  [v]isual
"  [i]nsert
"  [c]ommand
"  [a]ll
set mouse=a

" Color Scheme 
colorscheme miromiro
"colorscheme dante
"colorscheme benmabey
"colorscheme gmarik

"::256-colorshemes
"colorscheme ristoink
"colorscheme desert
"colorscheme Mustang
"colorscheme vibrantink
"colorscheme molokai

" Set colors "
"set t_Co=256

" auto commands
:ab #d #define
:ab #i #include
:ab #b /*******************************
:ab #e *******************************/

if has("autocmd")
    " Set comment characters for common languages
    autocmd FileType python,sh,bash,zsh,ruby,perl let StartComment="#" | let EndComment=""
    autocmd FileType html let StartComment="<!--" | let EndComment="-->"
    autocmd FileType php,c,javascript let StartComment="//" | let EndComment=""
    autocmd FileType cpp,java let StartComment="/*" | let EndComment="*/"
    autocmd FileType vim let StartComment="\"" | let EndComment=""
    " turn off any existing search on exit
    au VimEnter * nohls
endif
"}}}

" Tab-Completion 
"if has("eval")
"    function! CleverTab()
"        if strpart(getline('.'), 0, col('.') - 1) =~ '^\s*$'
"            return "\<Tab>"
"        else
"            return "\<C-N>"
"        endif
"    endfun
"    inoremap <Tab> <C-R>=CleverTab()<CR>
"    inoremap <S-Tab> <C-P>
"endif

" Special less/man/vimpager modes 
if has("eval") && has("autocmd")
    fun! <SID>check_pager_mode()
        if exists("g:loaded_less") && g:loaded_less
        " we're in vimpager / less.sh / man mode
            set laststatus=0
            set ruler
            "set foldmethod=manual
            "set foldlevel=99
            set nowrap
            set nonumber
            " Remove weird keybindings from vimpagr
            set nofoldenable
            set nolist
            unmap <Space>
            unmap z
            "unmap q
            unmap d
        endif
    endfun
    autocmd VimEnter * :call <SID>check_pager_mode()
endif

" [Un]Comment lines in a visual block 
fun CommentLines()
    try
        execute ":s@^".g:StartComment." @\@g"
        execute ":s@ ".g:EndComment."$@@g"
    catch
        execute ":s@^@".g:StartComment." @g"
        execute ":s@$@ ".g:EndComment."@g"
    endtry
endfun
" Set keymaps for [un]commenting
vmap <Leader>c :call CommentLines()<CR>

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

" Mutt settings 
" F1 through F3 rewraps paragraphs
augroup MUTT
	au BufRead ~/.mutt/temp/mutt* set spell 
	au BufRead ~/.mutt/temp/mutt* nmap  <F1>  gqap
	au BufRead ~/.mutt/temp/mutt* nmap  <F2>  gqqj
	au BufRead ~/.mutt/temp/mutt* nmap  <F3>  kgqj
	au BufRead ~/.mutt/temp/mutt* map!  <F1>  <ESC>gqapi
	au BufRead ~/.mutt/temp/mutt* map!  <F2>  <ESC>gqqji
	au BufRead ~/.mutt/temp/mutt* map!  <F3>  <ESC>kgqji
augroup END

" When editing a file, always jump to the last known cursor position.
" Don't do it when the position is invalid or when inside an event handler
" (happens when dropping a file on gvim).
" Also don't do it when the mark is in the first line, that is the
" default position when opening a file.
autocmd BufReadPost *
    \ if line("'\"") > 1 && line("'\"") <= line("$") |
    \   exe "normal! g`\"" |
    \ endif
  

" folding
set foldenable
set foldmethod=marker
set foldmarker={,}
set foldlevel=0

" yank and copy to X clipboard
set clipboard+=unnamed
" Simulates copying to system clipboard
vmap <C-c> y:call system("xclip -i -selection clipboard",getreg("\""))<CR>:call system("xclip -i", getreg("\""))<CR>

" Allows writing to files with root priviledges
cmap w!! %!sudo tee > /dev/null %

" vim: nospell foldmethod=marker:foldmarker={,}:foldlevel=0
