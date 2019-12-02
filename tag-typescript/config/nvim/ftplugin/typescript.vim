setlocal formatexpr=CocAction('formatSelected')

command! -nargs=0 Tsc :call CocAction(‘runCommand’, ‘tsserver.watchBuild’)
command! -nargs=0 OrganizeImport  :call CocAction('runCommand', 'tsserver.organizeImports') 

" Jest - testing framework
command! -nargs=0 Jest        :call CocAction('runCommand', 'jest.projectTest') " proj
command! -nargs=0 JestCurrent :call CocAction('runCommand', 'jest.fileTest', ['%']) " file
command!          JestInit    :call CocAction('runCommand', 'jest.init') " init
" Run jest for current test
nnoremap <leader>te :call CocAction('runCommand', 'jest.singleTest')<CR>
