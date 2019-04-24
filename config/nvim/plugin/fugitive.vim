call dein#begin(dein_base_path)
call dein#add('tpope/vim-fugitive')
command! -range CommitMessages :<line1>,<line2>Glog --pretty=short
call dein#end()
call dein#save_state()
