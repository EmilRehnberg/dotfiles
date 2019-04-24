if exists("disable_r_ftplugin")
  finish
endif

autocmd BufNewFile,BufRead *.Rprofile set filetype=r
autocmd BufRead *.Rhistory set filetype=r
autocmd BufNewFile,BufRead *.r set filetype=r
autocmd BufNewFile,BufRead *.R set filetype=r
autocmd BufNewFile,BufRead *.s set filetype=r
autocmd BufNewFile,BufRead *.S set filetype=r
autocmd BufNewFile,BufRead *.rdmpd set filetype=r

autocmd BufNewFile,BufRead *.Rout set filetype=rout
autocmd BufNewFile,BufRead *.Rout.save set filetype=rout
autocmd BufNewFile,BufRead *.Rout.fail set filetype=rout

autocmd BufNewFile,BufRead *.Rrst set filetype=rrst
autocmd BufNewFile,BufRead *.rrst set filetype=rrst

autocmd BufNewFile,BufRead *.Rmd set filetype=rmd
autocmd BufNewFile,BufRead *.rmd set filetype=rmd

autocmd BufNewFile,BufRead *.rpres set filetype=rmd
