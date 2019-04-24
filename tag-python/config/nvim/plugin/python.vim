call dein#begin(dein_base_path)
call dein#add('goerz/jupytext.vim')
call dein#end()
call dein#save_state()
let g:jupytext_enable = 1
let g:jupytext_command = '~/anaconda3/bin/jupytext'
let g:jupytext_fmt = 'py'
