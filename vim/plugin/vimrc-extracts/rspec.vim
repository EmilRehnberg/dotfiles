
" from http://urgetopunt.com/rspec/vim/2013/02/12/run-rspec-within-vim.html
noremap <Leader>rs :call RunSpec('spec', '-fp')<CR>
noremap <Leader>rd :call RunSpec(expand('%:h'), '-fd')<CR>
noremap <Leader>rf :call RunSpec(expand('%'), '-fd')<CR>
noremap <Leader>rl :call RunSpec(expand('%'), '-fd -l ' . line('.'))<CR>
function! RunSpec(spec_path, spec_opts)
  let speccish = match(@%, '_spec.rb$') != -1
  if speccish
    exec '!bundle exec rspec ' . a:spec_opts . ' ' . a:spec_path
  else
    echo '<<WARNING>> RunSpec() can only be called from inside spec files!'
  endif
endfunction

