 set nocompatible " be iMproved
 filetype off " required!
 set number " show line numbers
 set mouse=a " active mouse drag when using vsplit
 set splitright " split the window on the right side
 syntax on
"Highlight after 80
 highlight OverLength ctermbg=red ctermfg=white guibg=#592929
 match OverLength /\%81v.\+/
" replace tab with spaces
 set expandtab
 set tabstop=4
 set shiftwidth=4
 map <F2> :retab <CR> :wq! <CR>

" added by me for zhongwen luanma, start.
set fileencodings=utf-8,gb2312,gbk,gb18030
set termencoding=utf-8
set encoding=prc
" added by me for zhongwen luanma, end.

 "code folding
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
"highlight Folded guibg=grey guifg=blue ctermbg=black ctermfg=blue
"highlight FoldColumn guibg=grey10 guifg=white ctermbg=DarkBlue ctermfg=white

 highlight Folded term=standout ctermbg=Grey ctermfg=black guibg=Grey38 guifg=DarkBlue
 "highlight FoldColumn term=standout ctermbg=Grey ctermfg=white guibg=Grey10 guifg=white
 highlight FoldColumn term=standout ctermbg=black ctermfg=white guibg=Grey10 guifg=white


"folding settings
 "set foldmethod=indent   "fold based on indent
 "set foldnestmax=10      "deepest fold is 10 levels
"set nofoldenable        "dont fold by default
 "set foldlevel=1         "this is just what i use

 " Then you can toggle folding with za. You can fold everything with zM
 " and unfold everything with zR. zm and zr can be used to get
 " those folds just right. Always remember the almighty help file
 " at “help :folding” if you get stuck.

 "To look up the history of commands just type q:

 " More reference:
 " http://vim.wikia.com/wiki/Using_command-line_history
 " http://vim.wikia.com/wiki/Moving_lines_up_or_down
 "
