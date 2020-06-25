set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set noautoindent
set synmaxcol=500
setlocal omnifunc=htmlcomplete#CompleteTags

command! -nargs=0 Format :CocCommand markdownlint.fixAll
" autocmd BufWritePre * :Format
