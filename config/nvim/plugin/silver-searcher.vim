call dein#begin(dein_base_path)
call dein#add('yegappan/grep')
call dein#end()
call dein#save_state()

if executable('ag')
  " Use ag over grep
  set grepprg=ag\ --nogroup\ --nocolor
endif
" bind leader+m to grep shortcut
command! -nargs=+ -complete=file -bar Ag silent! grep! <args>|cwindow|redraw!
nnoremap <Leader>m :Ag<SPACE>
