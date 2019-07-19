runtime ftplugin/nvim-r.vim
nnoremap <silent> <LocalLeader>T :call g:SendCmdToR("devtools::test()")<CR>
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set synmaxcol=500

let g:neosnippet#scope_aliases['r'] = 'r,r-dplyr,r-ggplot,r-readr,r-magrittr'

let b:ale_fix_on_save = 1
let b:ale_fixers = ['trim_whitespace', 'remove_trailing_lines', 'styler']
let b:ale_r_lintr_options = "lintr::with_defaults(object_name_linter('snake_case'),line_length_linter(128))"
