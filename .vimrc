
" © 2007 ROBO Design
" http://www.robodesign.ro

" My VIM 7.0 configuration file. Directly from ~/.vimrc
" Last update: 2007-07-01

"set verbose=9

" Settings
" ========

" Set to working directory to the current file
autocmd BufEnter * lcd %:p:h

" I do not like the vi-compatible mode.
set nocompatible 

" Make backspace work as usual.
set backspace=indent,eol,start 

" Allow changing the buffer without saving.
set hidden 

" How many lines of history to remember.
set history=1000 

" Use all the memory needed, for maximum performance
set maxmemtot=2000000 
set maxmem=2000000 
set maxmempattern=2000000 

" Remember information between vim restarts.
set viminfo='200,<300,s150,%,h,! 


" Auto-complete
" =============

" Scanning included files is really slow for Perl files
" Maybe I should change this only for Perl files
set complete-=i 

" Turn on wild menu which shows auto-complete options in the command mode
set wildmenu

" File-related
" ============

" Support all three, in this order
set fileformats=unix,dos,mac 

" Detect the type of file and enable filetype-specific indenting.
filetype plugin indent on 

" Backups
set backup
set backupcopy=auto
set backupskip=/tmp/*,$TMPDIR/*,$TMP/*,$TEMP/*,*test*,*temp*,*tmp*,*tst*

" (I decided I like the Visual mode more)
" Start the selection mode with Shift+Arrows/Home/End/PageUp/PageDown, and with
" the mouse
set selectmode=mouse,key

" Start the Visual/Selection mode with using Shift+Arrows/etc
set keymodel=startsel


" User interface
" ==============

" Set default color scheme for gvim
" =================================
if has("gui_running")
	" Set font for gui
    "set guifont=Andale\ Mono:h14
	set guifont=Monaco:h14
    set antialias

    "set nomacatsui " for mac only
	" Set clolor schemd
	colorscheme torte

	" Set window size and position
	"winpos 168 0
	"set lines=40
	"set columns=125

endif 

" The command line height.
set cmdheight=1

" GUI cursor: no blinking
set guicursor+=a:blinkon0

" GUI Options:
" no toolbar
set guioptions-=T
" no autoselect 
set guioptions-=a

" Use console messages instead of GUI dialogs
set guioptions+=c

" Always show the status line
set laststatus=2

" Don't blink!
set novisualbell 

" Show the line numbers.
set number

" Threshold for reporting number of lines changed.
set report=0

" Enable the ruler with the format:
" {buffer number}{modified/readonly flag}: {file type} [current line, current column] {position percentage in file}
set ruler
set rulerformat=%25(%n%m%r:\ %Y\ [%l,%v]\ %p%%%)

" Minimal number of screen lines to keep above and below the cursor.
set scrolloff=3

" Shorter messages.
set shortmess=asI 

" Show (partial) command in status line.
set showcmd

" Status line format:
" {buffer number}: {file name, relative path to the current working directory}{modified flag}{readonly flag}
" {help flag}{preview flag} [file type, encoding, format] [current line-total lines, current column][position percentage in file]
set statusline=%n:\ %f%m%r%h%w\ [%Y,%{&fileencoding},%{&fileformat}]\ [%l-%L,%v][%p%%]

set ttyfast

" Do not redraw while running macros (much faster).
set lazyredraw 

" What to show when you do :set list.
set listchars=tab:\|\ ,trail:.,extends:>,precedes:<,eol:$ 

" Allow using the mouse everywhere.
set mouse=a


" Formatting and indenting
" ========================

set formatoptions=tcroqn " see help

" Automatic indenting, on new line.
set autoindent

" Enable C-style indenting.
set cindent 

" Smart indenting, based on the typed code.
set smartindent 

" Tab spacing.
set tabstop=4 
set shiftwidth=4 " same
set softtabstop=4 " same
set expandtab   " Tabs to be replaced with spaces
"set noexpandtab   " Tabs NOT to be replaced with spaces

" Use tabs at the start of a line, spaces elsewhere.
set smarttab 

" if on Vim will wrap long lines at a character in 'breakat' rather than at the last character that fits on the screen.
set linebreak

" Syntax highlighting and related
" ===============================

" Enable syntax highlighting
syntax on

" Show matching brackets.
set showmatch 

" How many tenths of a second to blink matching brackets for
"set mat=5 

" Do not highlight the string we searched.
set nohlsearch 

" Highlight the searched string, while typing.
set incsearch

" Highlight advanced perl vars inside strings
let perl_extended_vars=1 

" Highlight HTML code inside PHP strings
let php_htmlInStrings=1

" Highlight mySQL queries inside PHP strings
let php_sql_query=1

" Highlight PHP code inside ASP-like tags
let php_asp_tags=1

" Allow specified keys that move the cursor left/right to move to the previous/next line when the cursor is on the first/last character in the line.
" b (backspace), s (space) and the arrows.
set whichwrap=b,s,<,>

" Code folding
" ============

set foldenable 

" Fold column width
" TODO: set to local c/c++ files
set foldcolumn=4

" Make folding syntax sensitive
set foldmethod=syntax

" Folds with a higher level will be automatically closed.
set foldlevel=4

" Don't open folds when I search into them, or I undo something
set foldopen-=search,undo 

" Highlight fold column foreground and background colors
""highlight Folded guibg=grey guifg=blue ctermbg=black ctermfg=blue
""highlight FoldColumn guibg=grey10 guifg=white ctermbg=DarkBlue ctermfg=white

highlight Folded term=standout ctermbg=Grey ctermfg=black guibg=Grey38 guifg=DarkBlue
highlight FoldColumn term=standout ctermbg=Grey ctermfg=white guibg=Grey10 guifg=white

" Functions
" =========

" This function toggles the 'fullscreen' mode. I sometimes need this, so I can
" just view my files, without all the 'clutter': line numbers, folding,
" command line, status line, etc.

let s:fullscreen_toggle = 0
function RD_Fullscreen ()
	if s:fullscreen_toggle == 0
		set cmdheight=1
		set nonumber
		set laststatus=0
		set foldcolumn=0
		let s:fullscreen_toggle = 1
	else
		set cmdheight=2
		set number
		set laststatus=2
		set foldcolumn=4
		let s:fullscreen_toggle = 0
	endif
endfunction

" This adds the new Fullscreen command.
command Fullscreen call RD_Fullscreen()

" This function is used for quickly opening my ReTidy script (often needed
" when cleaning pages).
let s:eretidy_toggle = 0
function RD_EditRetidy ()
	if s:eretidy_toggle == 0
		let l:cwd = getcwd()
		cd /path/to/retidy
		e retidy.php
		e retidy-stdio.php
		e retidy-profile-maximum.php
		e retidy-profile-custom.php
		cd `=l:cwd`
		let s:eretidy_toggle = 1
	else
		bdel retidy.php
		bdel retidy-stdio.php
		bdel retidy-profile-maximum.php
		bdel retidy-profile-custom.php
		let s:eretidy_toggle = 0
	endif
endfunction

command Eretidy call RD_EditRetidy()

" Mappings
" ========

" I like automatic completion for quotes and parentheses
""inoremap " ""<LEFT>
inoremap ' ''<LEFT>
inoremap ( ()<LEFT>
inoremap [ []<LEFT>
inoremap ` ``<LEFT>

" This does not work nice in PHP and other languages
inoremap { {}<LEFT>

" I want to be able to use the arrow keys "inside" wrapped lines
map <Up> gk
map <Down> gj

" These do not work very nicely.
" Supposedly the two mappings should work like the above, in insert mode.
"inoremap <silent> <Up> <ESC>gka
"inoremap <silent> <Down> <ESC>gja

" Autocommands
" ============

" Ensure every file does syntax highlighting (full)
"autocmd BufEnter * :syntax sync fromstart

autocmd FileType html setlocal matchpairs+=<:>
autocmd FileType html inoremap <buffer> < <><LEFT>
autocmd FileType php setlocal iskeyword+=@
autocmd FileType python set complete+=k~/.vim/syntax/python.vim isk+=.,(

" Abbreviations
" =============

"Automatic correctness
"===================
abbreviate teh the
abbreviate taht that

" Current date and time, ISO format.
iab isodate <c-r>=strftime("%Y-%m-%d %H:%M:%S")<cr>

" Variables
" =========

" Changes for the :TOhtml command
let use_xhtml = 1
let html_use_css = 1
let html_ignore_folding = 1
let html_number_lines = 0


" Set syntax foreground color of Comment to gray instead of default color blue
""hi Comment ctermfg=cyan cterm=none

"highlight Pmenu ctermbg=238 gui=bold
highlight Pmenu ctermbg=black gui=bold


" Set spell checker only for gvim
" ====================================================================

if has("gui_running")
	set spell
	":highlight Pmenu guibg=brown gui=bold
	highlight Pmenu guibg=black gui=bold
endif 


" Set autocmd for automatic word completion
" autocmd BufEnter * call DoWordComplete()

" No use of place holders, e.g. no <++> inserted automatically by setting to 0
" let g:Imap_UsePlaceHolders = 0

"Added by Wei Zhang
"======================vim-latex settings=======================================

" IMPORTANT: win32 users will need to have 'shellslash' set so that latex
" can be called correctly.
set shellslash"''

" IMPORTANT: grep will sometimes skip displaying the file name if you
" search in a singe file. This will confuse Latex-Suite. Set your grep
" " program to always generate a file-name.
set grepprg=grep\ -nH\ $*

" OPTIONAL: Starting with Vim 7, the filetype of empty .tex files defaults to
"  'plaintex' instead of 'tex', which results in vim-latex not being loaded.
"  The following changes the default filetype back to 'tex':
let g:tex_flavor='latex'

let g:Tex_DefaultTargetFormat='pdf'
let g:Tex_UseEditorSettingInDVIViewer = 1
let g:Tex_ViewRule_pdf = 'okular'
let g:Tex_ViewRule_dvi = 'okular'
let g:Tex_ViewRule_ps  = 'okular'
let g:Tex_CompileRule_pdf = 'pdflatex -synctex=1 -interaction=nonstopmode $*'


"======================end vim-latex settings===================================



"Added by Wei Zhang
"======================C-CPP support settings=======================================
" 
" Setting start column (The default starting column = 49)
let g:C_LineEndCommColDefault    = 33 
"====================== end of C-CPP support settings=======================================
"
"Added by Wei Zhang
"======================doxygen for C-CPP support settings================================
let g:DoxygenToolkit_commentType = "C++"
let g:DoxygenToolkit_briefTag_pre="@brief  " 
let g:DoxygenToolkit_paramTag_pre="@param  " 
let g:DoxygenToolkit_returnTag="@return  " 
let g:DoxygenToolkit_blockHeader="--------------------------------------------------------------------------" 
let g:DoxygenToolkit_blockFooter="--------------------------------------------------------------------------" 
"let g:DoxygenToolkit_authorName="Wei Zhang" 
"====================== end of doxygen for C-CPP support settings================================

" =================================================
" Added by Wei Zhang
" If set to 1, then pressing \ll will take you to the location of the first warning/error, otherwise you will remain in the original location but the errors/warnings will be listed in the preview window
" Set Tex_UseMakefile to 0 to ignore the Makefile when using \ll
let g:Tex_UseMakefile = 0

" Highlight long line over 80 text width 
" TODO: set to local c/c++ files
"au BufWinEnter * let w:m1=matchadd('Search', '\%<81v.\%>81v', -1)
"au BufWinEnter * let w:m2=matchadd('ErrorMsg', '\%>80v.\+', -1)

""match ErrorMsg '\%>80v.\+

""highlight OverLength ctermbg=red ctermfg=white guibg=#592929
""match OverLength /\%81v.\+/



"" For Vbundles 
 set rtp+=~/.vim/bundle/vundle/
 call vundle#rc()

 " let Vundle manage Vundle
 " required! 
 Bundle 'gmarik/vundle'

 " My Bundles here:
 "
 " original repos on github
 Bundle 'tpope/vim-fugitive'
 Bundle 'Lokaltog/vim-easymotion'
 Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
 Bundle 'tpope/vim-rails.git'
 " vim-scripts repos
 Bundle 'L9'
 Bundle 'FuzzyFinder'
 " non github repos
 Bundle 'git://git.wincent.com/command-t.git'
 " ...

 filetype plugin indent on     " required!
 "
 " Brief help
 " :BundleList          - list configured bundles
 " :BundleInstall(!)    - install(update) bundles
 " :BundleSearch(!) foo - search(or refresh cache first) for foo
 " :BundleClean(!)      - confirm(or auto-approve) removal of unused bundles
 "
 " see :h vundle for more details or wiki for FAQ
 " NOTE: comments after Bundle command are not allowed..
