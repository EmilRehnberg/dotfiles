scriptencoding utf-8
call dein#add('yegappan/grep')

" ideas from https://thoughtbot.com/blog/faster-grepping-in-vim
if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
" This defines a new command Ag to search for the provided text and open a “quickfix” wind
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
" bind leader+m to grep shortcut
nnoremap <Leader>m :Ag<SPACE>
