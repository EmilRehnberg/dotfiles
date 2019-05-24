runtime ftplugin/nvim-r.vim
nmap <silent> <LocalLeader>T :call g:SendCmdToR("devtools::test()")<CR>
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set synmaxcol=500

let b:ale_r_lintr_options = "lintr::with_defaults(object_name_linter('snake_case'),line_length_linter(128))"
