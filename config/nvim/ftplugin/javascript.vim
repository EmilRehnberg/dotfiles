setlocal omnifunc=javascriptcomplete#CompleteJS

let g:neosnippet#scope_aliases['javascript'] = 'javascript,javascript-requirejs'

let b:ale_fix_on_save = 1
let b:ale_fixers = ['remove_trailing_lines', 'trim_whitespace', 'importjs', 'standard']
let b:ale_linters = ['importjs', 'standard']
