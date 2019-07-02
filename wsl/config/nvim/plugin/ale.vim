let g:ale_fixers = ['remove_trailing_lines', 'trim_whitespace']
let g:ale_fix_on_save = 1
let g:deoplete#sources = {'_': ['ale']}
set omnifunc=ale#completion#OmniFunc
