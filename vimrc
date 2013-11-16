
set nocompatible
filetype off " required for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required! 
Bundle 'gmarik/vundle'

Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-surround'
Bundle 'kien/ctrlp.vim'
Bundle 'msanders/snipmate.vim'
Bundle 'kchmck/vim-coffee-script'
Bundle 'AutoTag'
Bundle 'AutoComplPop'
Bundle 'taglist.vim'
Bundle 'jcfaria/Vim-R-plugin'
"Bundle 'mileszs/ack.vim'
"Bundle 'Townk/vim-autoclose'


filetype plugin indent on
set t_Co=256
set number
set autoindent
set cindent
set list!
set listchars=tab:▸\ ,eol:¬
set hlsearch   " highlight all search results
"set incsearch  " increment search
set ignorecase " case-insensitive search
set smartcase  " upper-case sensitive search
set omnifunc=syntaxcomplete#Complete
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
syntax on

let g:SuperTabDefaultCompletionType = "context" "Adds file system path completion
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

autocmd FileType * setlocal ts=2 sw=2 sts=2 expandtab
" Dictionaries
autocmd Filetype txt,conf :set dictionary=/usr/share/dict/american-english

" darker gray decrease number / lighter gray increase
highlight NonText ctermfg=239 
highlight SpecialKey ctermfg=239
highlight LineNr ctermfg=241

" vim-pathogen
execute pathogen#infect()

" CTRLP set up
set runtimepath^=~/.vim/bundle/ctrlp.vim

