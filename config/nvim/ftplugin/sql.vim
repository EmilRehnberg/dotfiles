autocmd BufWritePre *.sql :%s/\m\s\+$//e # Trim trailing whitespace
