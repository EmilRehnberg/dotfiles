runtime ftplugin/markdown.vim

let g:coc_filetype_map = { 'pandoc': 'markdown' }

let g:neosnippet#scope_aliases['pandoc'] = 'markdown,pandoc'

let g:pandoc#spell#enabled = 0
let g:pandoc#syntax#conceal#use = 0
