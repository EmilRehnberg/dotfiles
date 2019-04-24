call dein#begin(dein_base_path)
call dein#add('scrooloose/syntastic')
call dein#end()
call dein#save_state()

let g:syntastic_always_populate_loc_list = 1
let g:syntastic_auto_loc_list = 1
let g:syntastic_check_on_open = 1
let g:syntastic_check_on_wq = 0

let g:syntastic_enable_r_lintr_checker = 1
let g:syntastic_r_checkers = ['lintr']
let g:syntastic_r_lintr_linters = "with_defaults(object_name_linter('lowerCamelCase'),line_length_linter(128))"

let g:syntastic_python_checkers = ['pylint']

let g:syntastic_html_tidy_exec = 'tidy5'
