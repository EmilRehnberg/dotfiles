
set nocompatible
filetype off " required for vundle

set rtp+=~/.vim/bundle/vundle/
call vundle#rc()

" let Vundle manage Vundle
" required!
" Use :BundleClean to clean
Bundle 'AutoTag'
Bundle 'AutoComplPop'
Bundle 'taglist.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'elzr/vim-json'
Bundle 'itchyny/calendar.vim'
Bundle 'jcfaria/Vim-R-plugin'
Bundle 'gmarik/vundle'
Bundle 'kakkyz81/evervim'
Bundle 'kien/ctrlp.vim'
Bundle 'kchmck/vim-coffee-script'
"Bundle 'mileszs/ack.vim'
Bundle 'msanders/snipmate.vim'
"Bundle 'Townk/vim-autoclose'
Bundle "roman/golden-ratio"
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-surround'
Bundle 'yegappan/grep'
Bundle 'vim-ruby/vim-ruby'

filetype plugin indent on
set autoindent
set cindent
set cursorline
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
"set list!
set listchars=tab:▸\ ,eol:¬
set hlsearch   " highlight all search results
"set incsearch  " increment search
set ignorecase " case-insensitive search
set number
set omnifunc=syntaxcomplete#Complete
set smartcase  " upper-case sensitive search
set t_Co=256
syntax on

let g:SuperTabDefaultCompletionType = "context" "Adds file system path completion
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

autocmd FileType * setlocal ts=2 sw=2 sts=2 expandtab
" trimming all trailing whitespace on save!
autocmd BufWritePre * :%s/\s\+$//e
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

" Do not use AutoComplPop on start-up. Use :AcpEnable / :AcpDisable to toggle
let g:acp_enableAtStartup = 0

" Setup for color-solarized
" set background=dark
let g:solarized_termcolors=256
colorscheme solarized

set switchbuf+=usetab,newtab

let g:evervim_devtoken='S=s368:U=3aca972:E=14a9d02db4a:C=1434551af4d:P=1cd:A=en-devtoken:V=2:H=cf0e2781fc1ff74f629fe0f690835e2a'

" calendar.vim settings
let g:calendar_google_calendar = 1
let g:calendar_google_task = 1

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor

  " Use ag in CtrlP for listing files. Lightning fast and respects .gitignore
  let g:ctrlp_user_command = 'ag %s -l --nocolor -g ""'

  " ag is fast enough that CtrlP doesn't need to cache
  let g:ctrlp_use_caching = 0
endif

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap \ :Ag<SPACE>

