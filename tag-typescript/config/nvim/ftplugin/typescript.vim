setlocal formatexpr=CocAction('formatSelected')

command! -nargs=0 Tsc :call CocAction(‘runCommand’, ‘tsserver.watchBuild’)
command! -nargs=0 OrganizeImport  :call CocAction('runCommand', 'tsserver.organizeImports') 
