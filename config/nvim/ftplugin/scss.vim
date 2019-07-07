set synmaxcol=500

let g:neosnippet#scope_aliases['scss'] = 'css,scss'

let b:ale_fix_on_save = 1
let b:ale_fixers = ['remove_trailing_lines', 'trim_whitespace', 'prettier', 'stylelint']
