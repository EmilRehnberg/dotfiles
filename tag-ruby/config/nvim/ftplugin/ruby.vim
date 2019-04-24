set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
setlocal omnifunc=rubycomplete#Complete

let b:rspec_command = 'call Send_to_Tmux("rspec {spec}\n")' " For integrating running of tmux rspec into tmux
map <Leader>rt :call RunCurrentSpecFile()<CR>
map <Leader>rs :call RunNearestSpec()<CR>
map <Leader>rl :call RunLastSpec()<CR>
map <Leader>ra :call RunAllSpecs()<CR>

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
" If text is selected, save it in the v buffer and send that buffer it to tmux
vmap <Leader>vb "vy :call VimuxSlime()<CR>
" Select current paragraph and send it to tmux
nmap <Leader>vb vip<LocalLeader>vs<CR>

function VimuxSlime()
 call VimuxSendText(@v)
 call VimuxSendKeys("Enter")
endfunction
