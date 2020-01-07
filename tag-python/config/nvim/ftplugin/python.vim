set fileformat=unix

autocmd BufWritePre :Format
autocmd BufWritePre :OrganizeImport

command! -nargs=0 StartREPL  :CocCommand python.startREPL
command! -nargs=0 StopREPL   :bdelete! term:*

nnoremap <silent> <LocalLeader>rf :StartREPL<CR>
nnoremap <silent> <LocalLeader>rq :StopREPL<CR>
nnoremap <silent> <LocalLeader>l V:CocCommand python.execSelectionInTerminal<CR>
vnoremap <silent> <LocalLeader>l :CocCommand python.execSelectionInTerminal<CR>
