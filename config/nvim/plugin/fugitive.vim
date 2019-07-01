call dein#begin(dein_base_path)
call dein#add('tpope/vim-fugitive')
call dein#add('tpope/vim-rhubarb')
call dein#add('SevereOverfl0w/deoplete-github') " git auto-completion using deoplete
command! -range CommitMessages :<line1>,<line2>Glog --pretty=short
call dein#end()
call dein#save_state()
