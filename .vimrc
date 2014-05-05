set nocompatible              " be iMproved, required
filetype off                  " required

" set the runtime path to include Vundle and initialize
set rtp+=~/.vim/bundle/Vundle.vim
call vundle#begin()
" alternatively, pass a path where Vundle should install plugins
"call vundle#begin('~/some/path/here')

" let Vundle manage Vundle, required
Plugin 'gmarik/Vundle.vim'

Plugin 'https://github.com/genoma/vim-less.git'
Plugin 'https://github.com/kchmck/vim-coffee-script.git'

" All of your Plugins must be added before the following line
call vundle#end()            " required
filetype plugin indent on    " required
" To ignore plugin indent changes, instead use:
"filetype plugin on
"
" Brief help
" :PluginList          - list configured plugins
" :PluginInstall(!)    - install (update) plugins
" :PluginSearch(!) foo - search (or refresh cache first) for foo
" :PluginClean(!)      - confirm (or auto-approve) removal of unused plugins
"
" see :h vundle for more details or wiki for FAQ
" Put your non-Plugin stuff after this line

"Turn on syntax highlighting
syntax on

"Setup indentation
set autoindent
"Default to two space tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

"Turn on line numbers
set number
" Set to light gray,
" http://guns.github.io/xterm-color-table.vim/images/xterm-color-table.png
highlight LineNr ctermfg=8

"Turn on auto reload, sortof. Still need to do a :checktime for it to work
set autoread

"Python uses four spaces tabs
au FileType python setl shiftwidth=4 expandtab

"Make ctrl+n and ctrl+m change tabs
map <C-n> :tabprev<CR>
map <C-m> :tabnext<CR>
