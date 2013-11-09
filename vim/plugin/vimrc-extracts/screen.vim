" Fix vim for screen. This fixes the key arrows bug. 
if match($TERM, "screen")!=-1
  set term=xterm
endif

