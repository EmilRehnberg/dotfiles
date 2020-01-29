setlocal formatexpr=CocAction('formatSelected')

command! -nargs=0 Tsc :call CocAction(‘runCommand’, ‘tsserver.watchBuild’)
command! -nargs=0 OrganizeImport  :call CocAction('runCommand', 'tsserver.organizeImports') 

" NPM commands
command! -nargs=0 NpmBuild !npm run-script build
nnoremap <silent> <leader>b :NpmBuild<CR>
