" Asynchronous Lint Engine with deoplete
call dein#add('w0rp/ale')
call deoplete#custom#option('sources', {'_': ['ale']})

set omnifunc=ale#completion#OmniFunc
let g:ale_fixers = ['remove_trailing_lines', 'trim_whitespace']
let g:ale_fix_on_save = 1
let g:ale_lint_on_save = 1
let g:ale_lint_on_text_changed = 0
