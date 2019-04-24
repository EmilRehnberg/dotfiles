call dein#begin(dein_base_path)
call dein#add('blindFS/vim-taskwarrior')
call dein#end()
call dein#save_state()
let g:task_rc_override = 'rc.defaultwidth=0'
