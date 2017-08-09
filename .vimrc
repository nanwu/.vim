set backspace=indent,eol,start

syntax on
filetype plugin indent on
set number
set relativenumber
set expandtab
set tabstop=4
set softtabstop=4
set shiftwidth=4

nnoremap <C-L> :tabn<CR>
nnoremap <C-H> :tabp<CR>

hi User1 ctermfg=254 ctermbg=088
hi User2 ctermfg=233  ctermbg=214
hi User3 ctermfg=233  ctermbg=226
hi User4 ctermfg=233 ctermbg=112
hi User5 ctermfg=233 ctermbg=118
hi User7 ctermfg=255 ctermbg=088 cterm=bold
hi User8 ctermfg=255 ctermbg=031
hi User9 ctermfg=255 ctermbg=093
hi User0 ctermfg=255 ctermbg=236 

function! HighlightSearch()
  if &hls
    return 'H'
  else
    return ''
  endif
endfunction

set laststatus=2
set statusline=
set statusline+=%7*\[%n]                                  "buffernr
set statusline+=%1*\ %<%F\                                "File+path
set statusline+=%2*\ %y\                                  "FileType
set statusline+=%3*\ %{''.(&fenc!=''?&fenc:&enc).''}      "Encoding
set statusline+=%3*\ %{(&bomb?\",BOM\":\"\")}\            "Encoding2
set statusline+=%4*\ %{&ff}\                              "FileFormat (dos/unix..) 
set statusline+=%5*\ %{&spelllang}\%{HighlightSearch()}\  "Spellanguage & Highlight on?
set statusline+=%8*\ %=\ r:%l\             "Rownumber/total (%)
set statusline+=%9*\ c:%03c\                            "Colnr
set statusline+=%0*\ \ %m%r%w\ %P\ \                      "Modified? Readonly? Top/bot.


