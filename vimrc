syntax on
set number
set nu

set ls=2
set sw=2
set ts=2
set expandtab
set sts=2
set autoindent

set backspace=indent,eol,start

execute pathogen#infect()

"map for opening Nerdtree"
map <silent> <C-n> :NERDTreeToggle<CR>

"set vim to look for tags file from current directory up to your home directory
set tags=./tags,tags;$HOME
