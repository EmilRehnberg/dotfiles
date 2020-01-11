setlocal formatexpr=CocAction('formatSelected')

command! -nargs=0 Tsc :call CocAction(‘runCommand’, ‘tsserver.watchBuild’)
command! -nargs=0 OrganizeImport  :call CocAction('runCommand', 'tsserver.organizeImports') 

command! -nargs=0 JestSuite   :call CocAction('runCommand', 'jest.projectTest')
command! -nargs=0 JestCurrent :call CocAction('runCommand', 'jest.fileTest', ['%'])
command!          JestInit    :call CocAction('runCommand', 'jest.init')

" align keys with vim-test plugin
nnoremap <silent> t<C-s> :JestSuite<CR>
nnoremap <silent> t<C-f> :JestCurrent<CR>
nnoremap <silent> t<C-n> :call CocAction('runCommand', 'jest.singleTest')<CR>
