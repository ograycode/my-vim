"Plugin loading with pathogen
execute pathogen#infect()

"Generate helptags for airline
Helptags

"Turn on syntax highlighting
syntax on

"Setup indentation
set autoindent
"Default to two space tabs
set tabstop=2
set shiftwidth=2
set expandtab
set smarttab

"Cursor line
set cursorline

"Turn on line numbers
set number

"Turn on auto reload, sortof. Still need to do a :checktime for it to work
set autoread

"More of a sane backspace
set backspace=indent,eol,start

"Cmd settings
set wildmenu
set showcmd

"Python uses four spaces tabs
au FileType python setl shiftwidth=4 expandtab

"Make ctrl+n and ctrl+m change tabs
map <C-n> :tabprev<CR>
map <C-m> :tabnext<CR>

"Fold
set foldmethod=syntax

"Reload vimrc automatically
"From http://stackoverflow.com/a/2403926
augroup myvimrc
    au!
    au BufWritePost .vimrc,_vimrc,vimrc,.gvimrc,_gvimrc,gvimrc so $MYVIMRC | if has('gui_running') | so $MYGVIMRC | endif
augroup END

" use dark gruvbox theme
color gruvbox
set background=dark
