if did_filetype()
  finish
endif
if getline(1) =~# '^#!.*/bin/env\s\+Rscript\>'
  setfiletype r
elseif getline(1) =~# '^#!.*/bin/env\s\+R\>'
  setfiletype r
endif
