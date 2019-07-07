let g:netrw_home='~/.cache' " avoiding local cache files
let g:netrw_banner=0        " disable banner
let g:netrw_browse_split=0  " open in same window - can be opened in many ways
let g:netrw_altv=1          " open splits to the right
let g:netrw_liststyle=3     " tree view
augroup QuitUneditedBuffers
  autocmd FileType netrw setl bufhidden=delete
augroup end
