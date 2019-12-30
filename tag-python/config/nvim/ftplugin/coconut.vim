set fileformat=unix

autocmd BufWritePre :OrganizeImport

call CocAction('toggleExtension', 'python')
