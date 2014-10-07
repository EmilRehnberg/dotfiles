"""
""" 基本
"""
filetype plugin indent on
syntax on
set nocompatible
set autoindent
set cindent
set cursorline
set dictionary-=/usr/share/dict/words dictionary+=/usr/share/dict/words
set listchars=tab:▸\ ,eol:¬
set hlsearch   " highlight all search results
set ignorecase " case-insensitive search
set omnifunc=syntaxcomplete#Complete
set smartcase  " upper-case sensitive search
set t_Co=256
set term=xterm-256color
set synmaxcol=128 " Syntax coloring lines that are too long just slows down the world
set ttyfast " u got a fast terminal
set ttyscroll=3
set lazyredraw " to avoid scrolling problems
set encoding=utf-8
set ls=2 "adds the status bar
set switchbuf+=usetab,newtab

" 従来
" set incsearch   " increment search
" set number      " adds row numbers
" set list!       " shows tabs and eols as symbols

" trimming all trailing whitespace on save!
autocmd BufWritePre * :%s/\s\+$//e

" darker gray decrease number / lighter gray increase
highlight NonText ctermfg=239
highlight SpecialKey ctermfg=239
highlight LineNr ctermfg=241

" Omnicompletion settings
let g:SuperTabDefaultCompletionType = "context" "Adds file system path completion
let g:SuperTabContextDefaultCompletionType = "<c-x><c-o>"

"""
""" MAPPINGS
"""
" set the leader to comma, (default is backslash)
let mapleader=","

" Unmap the arrow keys, use hjkl
map <Left> <Nop>
map <Down> <Nop>
map <Up> <Nop>
map <Right> <Nop>
" do not remember what Q does
nnoremap Q <Nop>

noremap <Leader>c :nohlsearch<CR>

"""
""" VUNDLE
"""
set rtp+=~/.vim/bundle/vundle/
call vundle#rc()
Bundle 'AutoComplPop'
Bundle 'SyntaxRange'
Bundle 'taglist.vim'
Bundle 'utl.vim'
Bundle 'altercation/vim-colors-solarized'
Bundle 'benmills/vimux'
Bundle 'cakebaker/scss-syntax.vim'
Bundle 'chrisbra/NrrwRgn'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'elzr/vim-json'
Bundle 'fatih/vim-go'
Bundle 'honza/vim-snippets'
Bundle 'itchyny/calendar.vim'
Bundle 'jceb/vim-orgmode'
Bundle 'jcfaria/Vim-R-plugin'
Bundle 'JulesWang/css.vim'
Bundle 'gmarik/vundle'
Bundle 'kchmck/vim-coffee-script'
Bundle 'kien/ctrlp.vim'
Bundle 'kikijump/tslime.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'majutsushi/tagbar'
Bundle 'pgr0ss/vimux-ruby-test'
Bundle 'roman/golden-ratio'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/syntastic'
Bundle 'SirVer/ultisnips'
Bundle 'slim-template/vim-slim.git'
Bundle 'tpope/vim-endwise'
Bundle 'tpope/vim-bundler'
Bundle 'tpope/vim-commentary'
Bundle 'tpope/vim-dispatch'
Bundle 'tpope/vim-fugitive'
Bundle 'tpope/vim-rails'
Bundle 'tpope/vim-repeat'
Bundle 'tpope/vim-rvm'
Bundle 'tpope/vim-speeddating'
Bundle 'tpope/vim-surround'
Bundle 'tpope/vim-unimpaired'
Bundle 'tristen/vim-sparkup'
Bundle 'yegappan/grep'
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-ruby/vim-ruby'

"""
""" 機能拡張
"""

" Do not use AutoComplPop on start-up. Use :AcpEnable / :AcpDisable to toggle
let g:acp_enableAtStartup = 0

" Setup for color-solarized
set background=dark
let g:solarized_termtrans  = 1
let g:solarized_termcolors = 256
colorscheme solarized

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

" quickly write HTML, just like zencoding but simple engough
let g:sparkupNextMapping= "<c-m>"

" vim rails syntax complete, try ctrl+x ctrl+u
set completefunc=syntaxcomplete#Complete

" bind \ (backward slash) to grep shortcut
command -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap <Leader>m :Ag<SPACE>


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Leader>a"
let g:UltiSnipsJumpForwardTrigger="<Leader>a"
let g:UltiSnipsJumpBackwardTrigger="<Leader>s"

"""
""" language specific setting
"""
" sets default tab setting
autocmd FileType * setlocal ts=2 sw=2 sts=2 expandtab

autocmd FileType c,*csv,markdown,r,ruby,sh :set ts=2 sw=2 sts=2 expandtab
autocmd FileType *.csv,markdown,org :set noautoindent
autocmd FileType python :set ts=4 sw=4 sts=4 expandtab

" Dictionaries
autocmd Filetype txt,conf :set dictionary=/usr/share/dict/american-english

" omni-completions
autocmd FileType css            setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType python         setlocal omnifunc=pythoncomplete#Complete
autocmd FileType ruby           setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml            setlocal omnifunc=xmlcomplete#CompleteTags

" org mode specific mappings for inserting new headers
autocmd FileType org map <buffer> <Leader>w <S-CR>
autocmd FileType org map <buffer> <Leader>W <C-S-CR>

au BufRead,BufNewFile *.gitconfig set filetype=gitconfig
au BufRead,BufNewFile *.go        set filetype=go
au BufRead,BufNewFile *.md        set filetype=markdown
au BufRead,BufNewFile *.org       set filetype=org

cmap fmd set filetype=markdown

"""
""" 雑多
"""

" Adds keys for quick running of specs
" from http://urgetopunt.com/rspec/vim/2013/02/12/run-rspec-within-vim.html
noremap <Leader>rs :call RunSpec('spec', '-fp')<CR>
noremap <Leader>rd :call RunSpec(expand('%:h'), '-fd')<CR>
noremap <Leader>rf :call RunSpec(expand('%'), '-fd')<CR>
noremap <Leader>rl :call RunSpec(expand('%'), '-fd -l ' . line('.'))<CR>
function! RunSpec(spec_path, spec_opts)
  let speccish = match(@%, '_spec.rb$') != -1
  if speccish
    exec '!bundle exec rspec ' . a:spec_opts . ' ' . a:spec_path
  els
    echo '<<WARNING>> RunSpec() can only be called from inside spec files!'
  endif
endfunction

" Fix vim for screen. This fixes the key arrows bug.
if match($TERM, "screen")!=-1
  set term=xterm
endif

" Vimux
" Prompt for a command to run
map <Leader>vp :VimuxPromptCommand<CR>
" Run last command executed by RunVimTmuxCommand
map <Leader>vl :VimuxRunLastCommand<CR>
" Inspect runner pane
map <Leader>vi :VimuxInspectRunner<CR>
" Close all other tmux panes in current window
map <Leader>vq :VimuxCloseRunner<CR>
" Interrupt any command running in the runner pane
map <Leader>vs :VimuxInterruptRunner<CR>
" replace tslime
function! VimuxSlime()
 call VimuxSendText(@v)
 call VimuxSendKeys("Enter")
endfunction
" If text is selected, save it in the v buffer and send that buffer it to tmux
vmap <Leader>vb "vy :call VimuxSlime()<CR>
" Select current paragraph and send it to tmux
nmap <Leader>vb vip<LocalLeader>vs<CR>

"""
""" status bar
""" (placed last so the status bar color is shown properly)
hi User1 ctermbg=darkgrey   ctermfg=red
hi User2 ctermbg=darkgrey   ctermfg=blue
hi User3 ctermbg=darkgrey   ctermfg=green
hi User4 ctermbg=darkgrey   ctermfg=yellow
hi User5 ctermbg=darkgrey   ctermfg=white
set statusline=
set statusline +=%1*\ %n\ %*   "buffer number
set statusline +=%5*%{&ff}%*   "file format
set statusline +=%3*%y%*       "file type
set statusline +=%4*\ %<%F%*   "full path
set statusline +=%2*%m%*       "modified flag
set statusline +=%1*%=%5l%*    "current line
set statusline +=%2*/%L%*      "total lines
set statusline +=%1*%4v\ %*    "virtual column number
set statusline +=%2*0x%04B\ %* "character under cursor"

