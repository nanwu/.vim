syntax on
set number

set ls=2
set sw=2
set ts=2
set expandtab
set sts=2
set autoindent

set backspace=indent,eol,start

execute pathogen#infect()
set tags=tags,tags;$HOME

"map for opening Nerdtree"
map <silent> <C-n> :NERDTreeToggle<CR>

