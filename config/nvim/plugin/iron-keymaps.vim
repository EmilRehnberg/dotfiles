" NOTE: use <C-\><C-N> ~ \NO
" re ~ REPL Execute
nnoremap <localleader>re :IronRepl<CR><Esc>
" motion ideas: http://springest.io/vim-motions-and-command-language
nmap <localleader>l <Plug>(iron-send-motion)ap
vmap <localleader>l <Plug>(iron-send-motion)}
