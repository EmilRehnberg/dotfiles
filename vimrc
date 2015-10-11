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
set ambiwidth=double
set ls=2 "adds the status bar
set switchbuf+=usetab,newtab

" Automatic reloading of .vimrc
autocmd! BufWritePost .vimrc source %

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
Bundle 'cespare/vim-toml'
Bundle 'chrisbra/NrrwRgn'
Bundle 'ecomba/vim-ruby-refactoring'
Bundle 'elzr/vim-json'
Bundle 'fatih/vim-go'
Bundle 'godlygeek/tabular'
Bundle 'hail2u/vim-css3-syntax'
Bundle 'honza/vim-snippets'
Bundle 'itchyny/calendar.vim'
Bundle 'jceb/vim-orgmode'
Bundle 'jcfaria/Vim-R-plugin'
Bundle 'JulesWang/css.vim'
Bundle 'gmarik/vundle'
Bundle 'kchmck/vim-coffee-script'
Bundle 'Keithbsmiley/rspec.vim'
Bundle 'kien/ctrlp.vim'
Bundle 'klen/python-mode'
Bundle 'jgdavey/tslime.vim'
Bundle 'Lokaltog/vim-easymotion'
Bundle 'majutsushi/tagbar'
Bundle 'pgr0ss/vimux-ruby-test'
Bundle 'plasticboy/vim-markdown'
Bundle 'roman/golden-ratio'
Bundle 'rstacruz/sparkup', {'rtp': 'vim/'}
Bundle 'scrooloose/syntastic'
Bundle 'slim-template/vim-slim.git'
Bundle 'tejr/vim-tmux'
Bundle 'thoughtbot/vim-rspec'
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
Bundle 'Valloric/YouCompleteMe'
Bundle 'vim-pandoc/vim-rmarkdown'
Bundle 'vim-ruby/vim-ruby'
Bundle 'wting/rust.vim'
Bundle 'xolox/vim-misc'
Bundle 'xolox/vim-notes'
Bundle 'yegappan/grep'

"""
""" 機能拡張
"""

" adds default folder for vim-notes notes
let g:notes_directories = ['~/Dropbox/bunsho/chuushaku-注釈/vim-notes']
let g:notes_suffix = '.txt'

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

" vim rails syntax complete, try ctrl+x ctrl+u
set completefunc=syntaxcomplete#Complete

" bind leader+m to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap <Leader>m :Ag<SPACE>


" Trigger configuration. Do not use <tab> if you use https://github.com/Valloric/YouCompleteMe.
let g:UltiSnipsExpandTrigger="<Leader>a"
let g:UltiSnipsJumpForwardTrigger="<Leader>a"
let g:UltiSnipsJumpBackwardTrigger="<Leader>s"

let g:syntastic_html_tidy_exec = 'tidy5'

"""
""" language specific setting
"""
" sets default tab setting
autocmd FileType * setlocal ts=2 sw=2 sts=2 expandtab

autocmd FileType c,*csv,markdown,r,ruby,sh :set ts=2 sw=2 sts=2 expandtab
autocmd FileType python,rust :set ts=4 sw=4 sts=4 expandtab
autocmd FileType *.csv,markdown,org,tsv :set noautoindent
autocmd FileType go,tsv :set ts=4 sw=4 sts=4 noexpandtab

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
au BufRead,BufNewFile *.json      set filetype=json
au BufRead,BufNewFile *.md        set filetype=markdown
au BufRead,BufNewFile *.org       set filetype=org
au BufRead,BufNewFile *.rs        set filetype=rust
au BufRead,BufNewFile *tmux.conf  set filetype=tmux
au BufRead,BufNewFile *.tsv       set filetype=tsv

" close preview window on selection an insert mode exit after omni-completion
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

autocmd Filetype scss set synmaxcol=500

"""
""" 雑多
"""

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

" For integrating running of tmux rspec into tmux
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
" vim-rspec mappings
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

command! -range CommitMessages :<line1>,<line2>Glog --pretty=short
