set nocompatible

" Dein settings
let g:dein_base_path='~/.cache/dein'
let g:dein_vim_path=dein_base_path."/repos/github.com/Shougo/dein.vim"
" :set doesn't eval variables
execute "set runtimepath+=" . dein_vim_path
if dein#load_state(dein_base_path)
  call dein#begin(dein_base_path)

  call dein#add(dein_vim_path)
  call dein#add('Shougo/deoplete.nvim')
  call dein#add('roxma/nvim-yarp')
  call dein#add('roxma/vim-hug-neovim-rpc')

  call dein#add('elzr/vim-json')
  call dein#add('godlygeek/tabular')
  call dein#add('jalvesaq/southernlights')
  call dein#add('kien/rainbow_parentheses.vim')
  call dein#add('roman/golden-ratio')
  call dein#add('rstacruz/sparkup', {'rtp': 'vim/'})
  call dein#add('Shougo/denite.nvim')
  call dein#add('Shougo/defx.nvim')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/neoyank.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('Shougo/vimshell.vim')
  call dein#add('slim-template/vim-slim.git')
  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-dispatch')
  call dein#add('tpope/vim-speeddating')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-scripts/SyntaxRange')
  call dein#add('vim-scripts/utl.vim')

  call dein#end()
  call dein#save_state()
endif

filetype plugin indent on
set incsearch
set cindent
set cursorline
set cursorcolumn
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set listchars=tab:▸\ ,eol:¬
set ignorecase " case-insensitive search
set omnifunc=syntaxcomplete#Complete
set smartcase  " upper-case sensitive search
set t_Co=256
set synmaxcol=128 " Syntax coloring lines that are too long just slows down the world
set ttyfast " u got a fast terminal
set lazyredraw " to avoid scrolling problems
set ambiwidth=double
set switchbuf+=usetab,newtab
set laststatus=2 " status bar always on
set tabstop=2 shiftwidth=2 softtabstop=2 expandtab
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

colorscheme southernlights

" unsure of the use of these options; perhaps for Nvim-R
let g:ScreenShellInitialFocus = 'shell'
let g:ScreenImpl = 'Tmux'

" deoplete settings
let g:deoplete#enable_at_startup = 1

" Automatic reloading of .vimrc
autocmd! BufWritePost .config/nvim/init.vim source %

" trimming all trailing whitespace on save!
autocmd BufWritePre * :%s/\s\+$//e

" darker gray decrease number / lighter gray increase
highlight NonText ctermfg=239
highlight SpecialKey ctermfg=239
highlight LineNr ctermfg=241

" Omnicompletion settings
let g:SuperTabDefaultCompletionType = "context" "Adds file system path completion
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"
" close preview window on selection an insert mode exit after omni-completion
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif
