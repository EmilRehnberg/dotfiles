" snippets
call dein#add('Shougo/neosnippet.vim')
call dein#add('Shougo/neosnippet-snippets')
imap <C-s> <Plug>(neosnippet_expand_or_jump)
smap <C-s> <Plug>(neosnippet_expand_or_jump)
xmap <C-s> <Plug>(neosnippet_expand_target)
