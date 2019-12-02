runtime ftplugin/nvim-r.vim
nnoremap <silent> <LocalLeader>C :call g:SendCmdToR("devtools::check()")<CR>
nnoremap <silent> <LocalLeader>F :call g:SendCmdToR("devtools::document(); devtools::spell_check(); usethis::use_tidy_description(); usethis::use_tidy_versions()")<CR> " FIX
nnoremap <silent> <LocalLeader>T :call g:SendCmdToR("devtools::test()")<CR>
nnoremap <silent> <LocalLeader>S :call g:SendCmdToR("traceback()")<CR> " for Stacktrace
command! -nargs=* RUsePackage :call g:SendCmdToR('usethis::use_package("'.<q-args>.'")')
set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set synmaxcol=500
