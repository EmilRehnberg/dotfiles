set ls=2 "adds the status bar
hi User1 ctermbg=black    ctermfg=red  
hi User2 ctermbg=black   ctermfg=blue    
hi User3 ctermbg=black   ctermfg=green
hi User4 ctermbg=black   ctermfg=yellow
hi User5 ctermbg=black   ctermfg=white
set statusline=
set statusline +=%1*\ %n\ %*            "buffer number
set statusline +=%5*%{&ff}%*            "file format
set statusline +=%3*%y%*                "file type
set statusline +=%4*\ %<%F%*            "full path
set statusline +=%2*%m%*                "modified flag
set statusline +=%1*%=%5l%*             "current line
set statusline +=%2*/%L%*               "total lines
set statusline +=%1*%4v\ %*             "virtual column number
set statusline +=%2*0x%04B\ %*          "character under cursor"
