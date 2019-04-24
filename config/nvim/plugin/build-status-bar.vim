set statusline=%n\                              " buffer number
set statusline+=%f\                             " Filename
set statusline+=%m\                             " Modified flag
set statusline+=%{fugitive#statusline()}        " Git info
set statusline+=%=                              " Separator
set statusline+=%y                              " File type
set statusline+=[%{strlen(&fenc)?&fenc:'none'}] " File encoding
set statusline+=[%{&ff}]                        " File ending
set statusline+=\ %P\ of\ %L\                   " Perc. file
set statusline+=(%l\:%c)                        " Line info
