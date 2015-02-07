

"-General----------------------------------------------------------------{{{
"sets no compatibility
set nocompatible

"displays the numbers to the left.
set number

"smart indenting
set smartindent

"for autotabbing
filetype on
filetype plugin on
filetype indent on


"Makes vim think that tabs are 4 spaces
set tabstop=4
set shiftwidth=4
set softtabstop=4

"Turns off the stupid visual bell.
set novisualbell

"Smart Search
set ignorecase
set smartcase
set incsearch
set showmatch
set hlsearch

"Set history to 500
set history=500

"Don't try to highlight lines longer than 500 characters.
set synmaxcol=500


"When the window resizes the splits also resize.
au VimResized * exec "normal! \<c-w>="

"possible fix for back space issue
set backspace=indent,eol,start

"disables swap file
"set noswapfile


" Remap of arrow keys
"nnoremap <Up> <nop>
"nnoremap <Down> <nop>
"nnoremap <Left> <nop>
"nnoremap <Right> <nop>

"Remap middle click to left click instead of paste
noremap <MiddleMouse> <LeftMouse>

" Linux/MacOSX
set wildignore+=*/tmp/*,/log/*,/tools/*,/vendor/*,/build/*,*.swp,*.zip,*.so,tags

" Windows

if has("win32") || has("win16")
	set wildignore+=*\\tmp\\*,\\log\\*,\\tools\\*,\\vendor\\*,\\build\\*,*.swp,*.zip,*.exe,tags
endif

"}}}


"-Make Vimrc Portable-------------------------------------------------------------{{{
if has("win32") || has("win16")
	" Run vim with -u <pathtovimrc>
	"set default 'runtimepath' (without ~/.vim folders)
	let &runtimepath = printf('%s/vimfiles,%s,%s/vimfiles/after', $VIM, $VIMRUNTIME, $VIM)
	"
	"" what is the name of the directory containing this file?
	let s:portable = expand('<sfile>:p:h')
	"
	"" add the directory to 'runtimepath'
	let &runtimepath = printf('%s,%s,%s/after', s:portable, &runtimepath, s:portable)

endif
"}}}
"


"-File-Specific----------------------------------------------------------{{{
"au Filetype html,ruby
"			\ setlocal shiftwidth=2 |
"			\ setlocal tabstop=2 |
"			\ set softtabstop=2
"
"au BufNewFile,BufReadPost *.coffee,*.haml,*.erb
"			\ setlocal shiftwidth=2 |
"			\ setlocal tabstop=2 |
"			\ set softtabstop=2

"au filetype c,h,cpp,java
"

"au filetype python |
"	\ set foldmethod=indent

"au BufRead,BufNewFile *.md
"			\ set filetype=markdown |
"			\ ColorHighlight
"
"autocmd BufEnter *.md exe 'noremap <F5> :!start C:\Program Files (x86)\Nightly\firefox.exe %:p<CR>'
"
if has("win32") || has("win16")
	autocmd BufEnter *.py exe 'noremap <F5> :!start C:\Python33\python.exe %:p<CR>'
	autocmd BufEnter *.py exe 'noremap <F6> :!C:\Python33\python.exe %:p<CR>'
endif
"}}}


"-Color-Scheme-----------------------------------------------------------{{{
syntax on

set background=dark

if has('gui_running')
  "set guifont=Lucida_Sans_Typewriter:h11
endif

colorscheme molokai

"hi Normal ctermfg=green guifg=green  guibg=black
"
"hi SpecialKey     term=bold ctermfg=4
"hi NonText        term=bold cterm=bold ctermfg=4
"hi Directory      term=bold ctermfg=4
"hi ErrorMsg       term=standout cterm=bold ctermfg=7 ctermbg=1
"hi IncSearch      term=reverse cterm=reverse
"hi Search         term=reverse ctermfg=0 ctermbg=3
"hi MoreMsg        term=bold ctermfg=2
"hi ModeMsg        term=bold cterm=bold
"hi LineNr         term=underline ctermfg=3
"hi Question       term=standout ctermfg=2
"hi StatusLine     term=bold,reverse cterm=bold,reverse
"hi StatusLineNC   term=reverse cterm=reverse
"hi VertSplit      term=reverse cterm=reverse
"hi SpecialKey     term=bold ctermfg=4
"hi NonText        term=bold cterm=bold ctermfg=4
"hi Directory      term=bold ctermfg=4
"hi ErrorMsg       term=standout cterm=bold ctermfg=7 ctermbg=1
"hi IncSearch      term=reverse cterm=reverse
"hi Search         term=reverse ctermfg=0 ctermbg=3
"hi MoreMsg        term=bold ctermfg=2
"hi ModeMsg        term=bold cterm=bold
"hi LineNr         term=underline ctermfg=3
"hi Question       term=standout ctermfg=2
"hi StatusLine     term=bold,reverse cterm=bold,reverse
"hi StatusLineNC   term=reverse cterm=reverse
"hi VertSplit      term=reverse cterm=reverse
"hi Title          term=bold ctermfg=5
"hi Visual         term=reverse cterm=reverse
"hi WarningMsg     term=standout ctermfg=1
"hi WildMenu       term=standout ctermfg=0 ctermbg=3
"hi Folded         term=standout ctermfg=4 ctermbg=7
"hi FoldColumn     term=standout ctermfg=4 ctermbg=7
"hi DiffAdd        term=bold ctermbg=1
"hi DiffChange     term=bold ctermbg=5
"hi DiffDelete     term=bold cterm=bold ctermfg=4 ctermbg=6
"hi DiffText       term=reverse cterm=bold ctermbg=1
"hi SignColumn     term=standout ctermfg=4 ctermbg=7
"hi SpellBad       term=reverse ctermbg=1
"hi SpellCap       term=reverse ctermbg=4
"hi SpellRare      term=reverse ctermbg=5
"hi SpellLocal     term=underline ctermbg=6
"hi Pmenu          ctermbg=5
"hi PmenuSel       ctermbg=7
"hi PmenuSbar      ctermbg=7
"hi PmenuThumb     cterm=reverse
"hi TabLine        term=underline cterm=underline ctermfg=0 ctermbg=7
"hi TabLineSel     term=bold cterm=bold
"hi TabLineFill    term=reverse cterm=reverse
"hi CursorColumn   term=reverse ctermbg=7
"hi CursorLine     term=underline cterm=underline gui=underline guibg=black
"hi MatchParen     term=reverse ctermbg=6
"hi Comment        term=bold ctermfg=4
"hi Constant       term=underline ctermfg=1 guifg=red
"hi Special        term=bold ctermfg=3
"hi Identifier     term=underline ctermfg=6
"hi Statement      term=bold ctermfg=3 guifg=darkyellow
"hi PreProc        term=underline ctermfg=5 guifg=magenta
"hi Type           term=underline ctermfg=2
"hi Underlined     term=underline cterm=underline ctermfg=5
"hi Ignore         cterm=bold ctermfg=7
"hi Error          term=reverse cterm=bold ctermfg=7 ctermbg=1
"hi Todo           term=standout ctermfg=0 ctermbg=3
"hi Title          term=bold ctermfg=5
"hi Visual         term=reverse cterm=reverse
"hi WarningMsg     term=standout ctermfg=1
"hi WildMenu       term=standout ctermfg=0 ctermbg=3
"hi Folded         term=standout ctermfg=4 ctermbg=7
"hi FoldColumn     term=standout ctermfg=4 ctermbg=7
"hi DiffAdd        term=bold ctermbg=1
"hi DiffChange     term=bold ctermbg=5
"hi DiffDelete     term=bold cterm=bold ctermfg=4 ctermbg=6
"hi DiffText       term=reverse cterm=bold ctermbg=1
"hi SignColumn     term=standout ctermfg=4 ctermbg=7
"hi SpellBad       term=reverse ctermbg=1
"hi SpellCap       term=reverse ctermbg=4
"hi SpellRare      term=reverse ctermbg=5
"hi SpellLocal     term=underline ctermbg=6
"hi Pmenu          ctermbg=5
"hi PmenuSel       ctermbg=7
"hi PmenuSbar      ctermbg=7
"hi PmenuThumb     cterm=reverse
"hi TabLine        term=underline cterm=underline ctermfg=0 ctermbg=7
"hi TabLineSel     term=bold cterm=bold
"hi TabLineFill    term=reverse cterm=reverse
"hi CursorColumn   term=reverse ctermbg=7
"hi CursorLine     term=underline cterm=underline gui=underline guibg=black
"hi MatchParen     term=reverse ctermbg=6
"hi Comment        term=bold ctermfg=4
"hi Constant       term=underline ctermfg=1 guifg=red
"hi Special        term=bold ctermfg=3
"hi Identifier     term=underline ctermfg=6
"hi Statement      term=bold ctermfg=3 guifg=darkyellow
"hi PreProc        term=underline ctermfg=5 guifg=magenta
"hi Type           term=underline ctermfg=2
"hi Underlined     term=underline cterm=underline ctermfg=5
"hi Ignore         cterm=bold ctermfg=7
"hi Error          term=reverse cterm=bold ctermfg=7 ctermbg=1
"hi Todo           term=standout ctermfg=0 ctermbg=3

"}}}


"-GUI-VIM----------------------------------------------------------------{{{
"if has('gui_running')
"	set guifont=Menlo\ Regular\ for\ Powerline:h12
"endif
"}}}


"-Code-Folding-----------------------------------------------------------{{{
"set foldmethod=marker
"set foldmarker={{{,}}}
"
"set foldlevelstart=0
"
"nnoremap <Space> za
"vnoremap <Space> za

"nnoremap <c-z> mzzMzvzz15<c-e>`z:Pulse<cr>
"}}}
