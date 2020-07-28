set fileformat=unix

let test#python#runner = 'pytest'
let test#python#pytest#options = {
  \ 'file':   '-vv',
\}

augroup PythonOnSave
  autocmd BufWritePre * :Format " :OrganizeImport
augroup end

command! -nargs=0 StartREPL  :CocCommand python.startREPL
command! -nargs=0 StopREPL   :bdelete! term:*

nnoremap <silent> <LocalLeader>rf :StartREPL<CR>
nnoremap <silent> <LocalLeader>rq :StopREPL<CR>
nnoremap <silent> <LocalLeader>l V:CocCommand python.execSelectionInTerminal<CR>
vnoremap <silent> <LocalLeader>l :CocCommand python.execSelectionInTerminal<CR>
