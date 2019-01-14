scriptencoding utf-8
set encoding=utf-8

"colours
colorscheme zenburn     " colour 
syntax enable           " enable syntax processing

"tabs and spaces
set tabstop=4            " one tab = 4 spaces
set softtabstop=4        " insert 4 spaces when using a tab
set expandtab            " tabs are spaces
let &colorcolumn="80"    " Show 80 line vertical line

"UI config
set number
set showcmd              " show command in bottom bar
filetype indent on       " load filetype-specific indent files
set wildmenu             " visual autocomplete for command menu

"Searching
set incsearch            " search as characters are entered
set hlsearch             " highlight matches
set cursorline           " highlight current line 

"Finding Files
set path+=**             " Use :find name.* to find sth

execute pathogen#infect()
 "Syntastic settings                                             
 set statusline+=%#warningmsg#                                                       
 set statusline+=%{SyntasticStatuslineFlag()}                                        
 set statusline+=%*                                                                  
                                                                
 let g:syntastic_always_populate_loc_list = 1                                        
 let g:syntastic_auto_loc_list = 1                                                   
 let g:syntastic_check_on_open = 1                                                   
 let g:syntastic_check_on_wq = 0                                                     
 let g:syntastic_python_checkers = ['flake8']  "python checker for PEP8          

 "Vundle Configuration
set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'VundleVim/Vundle.vim'
Plugin 'vim-syntastic/syntastic'                                 
Plugin 'scrooloose/nerdtree' 

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList       - lists configured plugins
" :PluginInstall    - installs plugins; append `!` to update or just :PluginUpdate
" :PluginSearch foo - searches for foo; append `!` to refresh local cache
" :PluginClean      - confirms removal of unused plugins; append `!` to auto-approve removal
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line 
