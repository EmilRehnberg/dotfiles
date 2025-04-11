let g:coc_data_home = $XDG_DATA_HOME.'/coc'

set hidden          " otherwise TextEdit might fail
set updatetime=300  " default gives poor diagnostic messages experience
set shortmess+=c    " silence ins-completion-menu messages
set signcolumn=yes  " show signcolumns
set nobackup        " Avoids some servers backup files issues
set nowritebackup
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')} " `:h coc-status`

let g:coc_global_extensions = [
  \ 'coc-css',
  \ 'coc-git',
  \ 'coc-html',
  \ 'coc-jest',
  \ 'coc-json',
  \ 'coc-markdownlint',
  \ 'coc-neosnippet',
  \ 'coc-pairs',
  \ 'coc-prettier', 
  \ 'coc-pyright',
  \ 'coc-r-lsp',
  \ 'coc-scala',
  \ 'coc-sh',
  \ 'coc-snippets',
  \ 'coc-sql',
  \ 'coc-tabnine',
  \ 'coc-texlab',
  \ 'coc-tsserver',
  \ 'coc-tslint-plugin', 
  \ 'coc-vimlsp',
  \ 'coc-vimtex',
  \ 'coc-word',
  \ 'coc-yaml',
  \ ]

function! s:check_back_space() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

function! s:show_documentation()
  if (index(['vim','help'], &filetype) >= 0)
    execute 'h '.expand('<cword>')
  else
    call CocAction('doHover')
  endif
endfunction

nmap <silent> [g    <Plug>(coc-diagnostic-prev) 
nmap <silent> ]g    <Plug>(coc-diagnostic-next)
nmap <silent> gd    <Plug>(coc-definition)
nmap <silent> gy    <Plug>(coc-type-definition)
nmap <silent> gi    <Plug>(coc-implementation)
nmap <silent> gr    <Plug>(coc-references)
nmap <leader>rn     <Plug>(coc-rename)
xmap <leader>f      <Plug>(coc-format-selected)
nmap <leader>f      <Plug>(coc-format-selected)
" e.g. paragraph: `<leader>aap`
xmap <leader>a      <Plug>(coc-codeaction-selected)
nmap <leader>a      <Plug>(coc-codeaction-selected)
nmap <leader>ac     <Plug>(coc-codeaction)
" Fix autofix problem of current line
nmap <leader>qf     <Plug>(coc-fix-current)
" requires document symbols feature of languageserver
xmap if             <Plug>(coc-funcobj-i)
xmap af             <Plug>(coc-funcobj-a)
omap if             <Plug>(coc-funcobj-i)
omap af             <Plug>(coc-funcobj-a)
" nmap <silent> <C-d> <Plug>(coc-range-select)
" xmap <silent> <C-d> <Plug>(coc-range-select)

nnoremap <silent> <SPACE>a  :<C-u>CocList diagnostics<CR>
nnoremap <silent> <SPACE>e  :<C-u>CocList extensions<CR>
nnoremap <silent> <SPACE>c  :<C-u>CocList commands<CR>
nnoremap <silent> <SPACE>o  :<C-u>CocList outline<CR>
nnoremap <silent> <SPACE>s  :<C-u>CocList -I symbols<CR>
nnoremap <silent> <SPACE>j  :<C-u>CocNext<CR>
nnoremap <silent> <SPACE>k  :<C-u>CocPrev<CR>
nnoremap <silent> <SPACE>p  :<C-u>CocListResume<CR>
nnoremap <silent> K :call <SID>show_documentation()<CR>

" REMAPS <CR> & <TAB> trigger completion with characters ahead and navigate.
inoremap <silent><expr> <TAB>
      \ pumvisible() ? "\<C-n>" :
      \ <SID>check_back_space() ? "\<TAB>" :
      \ coc#refresh()
inoremap <expr><S-TAB> pumvisible() ? "\<C-p>" : "\<C-h>"
inoremap <silent><expr> <C-r> coc#refresh()
inoremap <expr> <CR> complete_info()["selected"] != "-1" ? "\<C-y>" : "\<C-g>u\<CR>"

command! -nargs=0 Format          :call CocAction('format')
command! -nargs=? Fold            :call CocAction('fold', <f-args>)
" organize import of current buffer
command! -nargs=0 OrganizeImport  :call CocAction('runCommand', 'editor.action.organizeImport') 
autocmd CursorHold * silent call CocActionAsync('highlight')
autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp') " Update signature on placeholder jump
