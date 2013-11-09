
filetype plugin on
set t_Co=256
set number
set nocompatible
set autoindent
set cindent
set list!
set listchars=tab:▸\ ,eol:¬
set hlsearch   " highlight all search results
"set incsearch  " increment search
set ignorecase " case-insensitive search
set smartcase  " upper-case sensitive search

let g:SuperTabDefaultCompletionType = "context" "Adds file system path completion
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

autocmd FileType * setlocal ts=2 sw=2 sts=2 expandtab

" darker gray decrease number / lighter gray increase
highlight NonText ctermfg=239 
highlight SpecialKey ctermfg=239
highlight LineNr ctermfg=241

" vim-pathogen
execute pathogen#infect()

" Dictionaries
autocmd Filetype txt,conf :set dictionary=/usr/share/dict/american-english
" R FileType
autocmd FileType r :set ts=2 sw=2 sts=2 expandtab
" python FileType
autocmd FileType python :set ts=4 sw=4 sts=4 expandtab 
autocmd FileType python set omnifunc=pythoncomplete#Complete
" shell FileType
autocmd FileType sh :set ts=2 sw=2 sts=2 expandtab
" ruby FileType
autocmd FileType ruby :set ts=2 sw=2 sts=2 expandtab
" C FileType
autocmd FileType c :set ts=2 sw=2 sts=2 expandtab
" CSV Filetype
autocmd Filetype *.csv :set ts=2 sw=2 sts=2 expandtab noautoindent 


" Fix vim for screen. This fixes the key arrows bug. 
if match($TERM, "screen")!=-1
  set term=xterm
endif

" CTRLP set up
set runtimepath^=~/.vim/bundle/ctrlp.vim

" Unmap the arrow keys, use hjkl
map <Left> <Nop>
map <Down> <Nop>
map <Up> <Nop>
map <Right> <Nop>
" Trying to unmap ESC (use C-c or C-[), does not work though!
"

" from http://urgetopunt.com/rspec/vim/2013/02/12/run-rspec-within-vim.html
noremap <Leader>rs :call RunSpec('spec', '-fp')<CR>
noremap <Leader>rd :call RunSpec(expand('%:h'), '-fd')<CR>
noremap <Leader>rf :call RunSpec(expand('%'), '-fd')<CR>
noremap <Leader>rl :call RunSpec(expand('%'), '-fd -l ' . line('.'))<CR>
function! RunSpec(spec_path, spec_opts)
  let speccish = match(@%, '_spec.rb$') != -1
  if speccish
    exec '!bundle exec rspec ' . a:spec_opts . ' ' . a:spec_path
  else
    echo '<<WARNING>> RunSpec() can only be called from inside spec files!'
  endif
endfunction

"autocmd FileType ruby,eruby set omnifunc=rubycomplete#Complete
"autocmd FileType javascript set omnifunc=javascriptcomplete#CompleteJS
"'autocmd FileType html set omnifunc=htmlcomplete#CompleteTags
"autocmd FileType css set omnifunc=csscomplete#CompleteCSS
"autocmd FileType xml set omnifunc=xmlcomplete#CompleteTags
"autocmd FileType java set omnifunc=javacomplete#Complete
"if has("autocmd") && exists("+omnifunc")
"     autocmd Filetype *
"   \ if &omnifunc == "" |
"   \   setlocal omnifunc=syntaxcomplete#Complete |
"   \ endif
"endif
"let g:rubycomplete_buffer_loading = 1
"let g:rubycomplete_classes_in_global = 1
"let g:rubycomplete_rails = 1
