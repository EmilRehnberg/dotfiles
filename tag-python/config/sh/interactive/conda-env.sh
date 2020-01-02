#!/usr/bin/env sh
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$("$XDG_DATA_HOME"'/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if test "$?" = 0 ; then
    eval "$__conda_setup"
else
    if test -f "$XDG_DATA_HOME/anaconda3/etc/profile.d/conda.sh" ; then
        . "$XDG_DATA_HOME/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="$XDG_DATA_HOME/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
