call dein#begin(dein_base_path)
call dein#add('jalvesaq/Nvim-R')
call dein#add('jalvesaq/R-Vim-runtime')
call dein#add('vim-pandoc/vim-pandoc')
call dein#add('vim-pandoc/vim-pandoc-syntax')
call dein#add('vim-pandoc/vim-rmarkdown')
call dein#end()
call dein#save_state()
let g:pandoc#spell#enabled = 0
let g:pandoc#syntax#conceal#use = 0
