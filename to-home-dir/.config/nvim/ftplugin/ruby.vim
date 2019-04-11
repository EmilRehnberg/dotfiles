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
