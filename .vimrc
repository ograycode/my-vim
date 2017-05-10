
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
" Set to light gray,
" http://guns.github.io/xterm-color-table.vim/images/xterm-color-table.png
highlight LineNr term=bold cterm=None ctermfg=DarkGrey ctermbg=NONE gui=NONE guifg=DarkGrey guibg=NONE

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
