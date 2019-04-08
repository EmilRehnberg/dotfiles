set nocompatible

" Dein settings
set runtimepath+=~/.cache/dein/repos/github.com/Shougo/dein.vim
if dein#load_state('~/.cache/dein')
  call dein#begin('~/.cache/dein')
  call dein#add('~/.cache/dein')

  call dein#add('Shougo/deoplete.nvim')

  call dein#add('benmills/vimux')
  call dein#add('blindFS/vim-taskwarrior')
  call dein#add('cakebaker/scss-syntax.vim')
  call dein#add('cespare/vim-toml')
  call dein#add('ecomba/vim-ruby-refactoring')
  call dein#add('elzr/vim-json')
  call dein#add('godlygeek/tabular')
  call dein#add('goerz/jupytext.vim')
  call dein#add('guns/vim-sexp')
  call dein#add('hail2u/vim-css3-syntax')
  call dein#add('jalvesaq/Nvim-R')
  call dein#add('jalvesaq/R-Vim-runtime')
  call dein#add('jalvesaq/southernlights')
  call dein#add('JulesWang/css.vim')
  call dein#add('Keithbsmiley/rspec.vim')
  call dein#add('kien/rainbow_parentheses.vim')
  call dein#add('lervag/vimtex')
  call dein#add('jgdavey/tslime.vim')
  call dein#add('macvim-dev/macvim')
  call dein#add('majutsushi/tagbar')
  call dein#add('roman/golden-ratio')
  call dein#add('rstacruz/sparkup', {'rtp': 'vim/'})
  call dein#add('scrooloose/syntastic')
  call dein#add('Shougo/neosnippet.vim')
  call dein#add('Shougo/neosnippet-snippets')
  call dein#add('Shougo/neoyank.vim')
  call dein#add('Shougo/unite.vim')
  call dein#add('Shougo/vimproc.vim', {'build': 'make'})
  call dein#add('Shougo/vimshell.vim')
  call dein#add('slim-template/vim-slim.git')
  call dein#add('tmux-plugins/vim-tmux')
  call dein#add('thoughtbot/vim-rspec')
  call dein#add('tpope/vim-commentary')
  call dein#add('tpope/vim-db')
  call dein#add('tpope/vim-dispatch')
  call dein#add('tpope/vim-endwise')
  call dein#add('tpope/vim-fugitive')
  call dein#add('tpope/vim-repeat')
  call dein#add('tpope/vim-sexp-mappings-for-regular-people')
  call dein#add('tpope/vim-speeddating')
  call dein#add('tpope/vim-surround')
  call dein#add('tpope/vim-unimpaired')
  call dein#add('vim-airline/vim-airline')
  call dein#add('vim-pandoc/vim-pandoc')
  call dein#add('vim-pandoc/vim-pandoc-syntax')
  call dein#add('vim-pandoc/vim-rmarkdown')
  call dein#add('vim-ruby/vim-ruby')
  call dein#add('vim-scripts/SyntaxRange')
  call dein#add('vim-scripts/taglist.vim')
  call dein#add('vim-scripts/utl.vim')
  call dein#add('vim-scripts/sqlserver.vim')
  call dein#add('vimwiki/vimwiki')
  call dein#add('wting/rust.vim')
  call dein#add('xolox/vim-misc')
  call dein#add('xolox/vim-notes')
  call dein#add('yegappan/grep')

  call dein#end()
  call dein#save_state()
endif

syntax on
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
let $NVIM_TUI_ENABLE_TRUE_COLOR=1

" unite.vim settings/key bindings
nnoremap <C-p> :Unite file_rec/async<cr>
nnoremap <space>/ :Unite ag:.<cr>
" yankring/yankstack
let g:unite_source_history_yank_enable = 1
nnoremap <space>p :Unite history/yank<cr>
" LustyJuggler
nnoremap <space>s :Unite -quick-match buffer<cr>
" Custom mappings for the unite buffer
autocmd FileType unite call s:unite_settings()
function! s:unite_settings()
  " Enable navigation with control-j and control-k in insert mode
  imap <buffer> <C-j>   <Plug>(unite_select_next_line)
  imap <buffer> <C-k>   <Plug>(unite_select_previous_line)
endfunction

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

"""
""" MAPPINGS
"""
" set the leader to comma, (default is backslash)
let mapleader=","
let maplocalleader=";"

" Unmap the arrow keys, use hjkl
map <Left> <Nop>
map <Down> <Nop>
map <Up> <Nop>
map <Right> <Nop>
" do not remember what Q does
nnoremap Q <Nop>

noremap <Leader>c :nohlsearch<CR>


"""
""" 機能拡張
"""

let g:jupytext_enable = 1
let g:jupytext_command = '~/anaconda3/bin/jupytext'
let g:jupytext_fmt = 'py'

" adds default folder for vim-notes notes
let g:notes_directories = ['~/Dropbox/bunsho/chuushaku-注釈/vim-notes']
let g:notes_suffix = '.txt'

let g:vimwiki_list = [{'path': '~/Dropbox/bunsho/vimwiki/',
      \ 'template_path': '~/Dropbox/bunsho/vimwiki-assets/templates/',
      \ 'template_default': 'default',
      \ 'template_ext': '.html',
      \ 'css_name': '~/Dropbox/bunsho/vimwiki-assets/style.css',
      \ 'path_html': '~/Dropbox/bunsho/vimwiki-html/'}]
let g:vimwiki_list_text_ignore_newline = 0
let g:vimwiki_list_ignore_newline = 0
let g:vimwiki_folding = 'expr'

" Do not use AutoComplPop on start-up. Use :AcpEnable / :AcpDisable to toggle
let g:acp_enableAtStartup = 0

" The Silver Searcher
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif

" bind leader+m to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap <Leader>m :Ag<SPACE>

" syntastic settings
let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0
let g:syntastic_html_tidy_exec = 'tidy5'

let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ['lintr']
let g:syntastic_r_lintr_linters = "with_defaults(object_name_linter('lowerCamelCase'),line_length_linter(128))"
let g:syntastic_python_checkers = ['pylint']

" for vim-taskwarrior
let g:task_rc_override = 'rc.defaultwidth=0'

"""
""" language specific setting
"""
" sets default tab setting
autocmd FileType * setlocal ts=2 sw=2 sts=2 expandtab

autocmd FileType c,csv,markdown,r,ruby :set ts=2 sw=2 sts=2 expandtab
autocmd FileType sh :set ts=2 sw=2 sts=2 noexpandtab
autocmd FileType rust :set ts=4 sw=4 sts=4 expandtab
autocmd FileType csv,markdown,tsv :set noautoindent
autocmd FileType tsv :set ts=4 sw=4 sts=4 noexpandtab
autocmd FileType csv,tsv :set nowrap

" Dictionaries
autocmd Filetype txt,conf :set dictionary=/usr/share/dict/american-english

" omni-completions
autocmd FileType css            setlocal omnifunc=csscomplete#CompleteCSS
autocmd FileType html,markdown  setlocal omnifunc=htmlcomplete#CompleteTags
autocmd FileType javascript     setlocal omnifunc=javascriptcomplete#CompleteJS
autocmd FileType ruby           setlocal omnifunc=rubycomplete#Complete
autocmd FileType xml            setlocal omnifunc=xmlcomplete#CompleteTags

au BufRead,BufNewFile *.csv       set filetype=csv
au BufRead,BufNewFile *.gitconfig set filetype=gitconfig
au BufRead,BufNewFile *.json      set filetype=json
au BufRead,BufNewFile *.md        set filetype=markdown
au BufRead,BufNewFile *.rdmpd     set filetype=r
au BufRead,BufNewFile *.rpres     set filetype=rmarkdown
au BufRead,BufNewFile *.rs        set filetype=rust
au BufRead,BufNewFile *tmux.conf  set filetype=tmux
au BufRead,BufNewFile *.tsv       set filetype=tsv

if did_filetype()
  finish
endif
if getline(1) =~# '^#!.*/bin/env\s\+Rscript\>'
  setfiletype r
elseif getline(1) =~# '^#!.*/bin/env\s\+R\>'
  setfiletype r
endif

" close preview window on selection an insert mode exit after omni-completion
autocmd CursorMovedI * if pumvisible() == 0|pclose|endif
autocmd InsertLeave * if pumvisible() == 0|pclose|endif

autocmd Filetype css,markdown,r,rmarkdown,scss,vimwiki set synmaxcol=500

"""
""" 雑多
"""

colorscheme southernlights

let g:pandoc#spell#enabled = 0
let g:pandoc#syntax#conceal#use = 0

" Nvim-R settings
let R_assign = 0
let R_min_editor_width = 80
let R_rconsole_width = 100
let R_hi_fun = 1
let R_objbr_opendf = 1    " Show data.frames elements
let R_objbr_openlist = 1  " Show lists elements
let R_objbr_allnames = 1  " Show .GlobalEnv hidden objects
let R_objbr_labelerr = 1  " Warn if label is not a valid text
function! s:r_settings()
  if has("gui_running")
      inoremap <C-Space> <C-x><C-o>
  else
      inoremap <Nul> <C-x><C-o>
  endif
  vmap <Space> <Plug>RDSendSelection
  nmap <Space> <Plug>RDSendLine
endfunction
autocmd FileType r,rmd call s:r_settings()

" Copy to clipboard
vnoremap  <leader>y  "+y
nnoremap  <leader>Y  "+yg_
nnoremap  <leader>y  "+y
nnoremap  <leader>yy  "+yy
" Paste from clipboard
nnoremap <leader>p "+p
nnoremap <leader>P "+P
vnoremap <leader>p "+p
vnoremap <leader>P "+P

" Fix vim for screen. This fixes the key arrows bug.
if match($TERM, "screen")!=-1
  set term=xterm
endif

" " unite settings
" let g:unite_data_directory=s:get_cache_dir('unite')
" let g:unite_source_history_yank_enable=1
" let g:unite_source_rec_max_cache_files=5000
" " unite search settings
" let g:unite_source_grep_command='ag'
" let g:unite_source_grep_default_opts='--nocolor --line-numbers --nogroup -S -C4'
" let g:unite_source_grep_recursive_opt=''

let g:python2_host_prog = '/usr/local/Cellar/python/2.7.14/bin/python2.7'
let g:python3_host_prog = '/usr/local/Cellar/python/3.7.1/bin/python3'

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

" For integrating running of tmux rspec into tmux
let g:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")'
function! s:rspec_settings()
  " vim-rspec mappings
  map <Leader>rt :call RunCurrentSpecFile()<CR>
  map <Leader>rs :call RunNearestSpec()<CR>
  map <Leader>rl :call RunLastSpec()<CR>
  map <Leader>ra :call RunAllSpecs()<CR>
endfunction
autocmd FileType ruby,rspec call s:rspec_settings()

command! -range CommitMessages :<line1>,<line2>Glog --pretty=short

let g:ScreenShellInitialFocus = 'shell'
let g:ScreenImpl = 'Tmux'

" status bar build
set statusline=%n\                              " buffer number
set statusline+=%f\                             " Filename
set statusline+=%m\                             " Modified flag
set statusline+=%{fugitive#statusline()}        " Git info
set statusline+=%=                              " Separator
set statusline+=%y                              " File type
set statusline+=[%{strlen(&fenc)?&fenc:'none'}] " File encoding
set statusline+=[%{&ff}]                        " File ending
set statusline+=\ %P\ of\ %L\                   " Perc. file
set statusline+=(%l\:%c)                        " Line info

