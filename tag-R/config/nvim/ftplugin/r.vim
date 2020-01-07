runtime ftplugin/nvim-r.vim

set tabstop=2
set shiftwidth=2
set softtabstop=2
set expandtab
set synmaxcol=500

command! -nargs=* RUsePackage :call g:SendCmdToR('usethis::use_package("'.<q-args>.'")')

" Mnemonics: Check; Fix Stacktrace
nnoremap <silent> <LocalLeader>C :call g:SendCmdToR("devtools::check()")<CR>
nnoremap <silent> <LocalLeader>F :call g:SendCmdToR("devtools::document(); devtools::spell_check(); usethis::use_tidy_description(); usethis::use_tidy_versions()")<CR>
nnoremap <silent> <LocalLeader>S :call g:SendCmdToR("traceback()")<CR>

" Mnemonic: Test Suite (from vim-test)
nnoremap <silent> t<C-s> :call g:SendCmdToR("devtools::test()")<CR>
