 set nocompatible               " be iMproved
 filetype off                   " required!
 set number          " show line numbers
 set mouse=a         " active mouse drag when using vsplit 
 set splitright      " split the window on the right side
 
 "Highlight after 80 
 highlight OverLength ctermbg=red ctermfg=white guibg=#592929
 match OverLength /\%81v.\+/
 
 " Replace tabs with spaces
 set expandtab
 set tabstop=4
 set shiftwidth=4
 map <F2> :retab <CR> :wq! <CR>


 " Vundle stuff
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
