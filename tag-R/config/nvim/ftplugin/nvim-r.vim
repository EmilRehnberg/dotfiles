let R_assign = 0
let R_min_editor_width = 80
let R_rconsole_width = 100
let R_hi_fun = 1
let R_objbr_opendf = 1    " Show data.frames elements
let R_objbr_openlist = 1  " Show lists elements
let R_objbr_allnames = 1  " Show .GlobalEnv hidden objects
let R_objbr_labelerr = 1  " Warn if label is not a valid text

if has('gui_running')
  inoremap <C-Space> <C-x><C-o>
else
  inoremap <Nul> <C-x><C-o>
endif
vmap <Space> <Plug>RDSendSelection
nmap <Space> <Plug>RDSendLine
