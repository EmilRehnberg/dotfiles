#!/usr/bin/env sh
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
CONDA_USER_HOME="$XDG_DATA_HOME/miniconda3" # XDG vars on ubuntu/macos
__conda_setup="$("$CONDA_USER_HOME"'/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$CONDA_USER_HOME/etc/profile.d/conda.sh" ]; then
        . "$CONDA_USER_HOME/etc/profile.d/conda.sh"
    else
        export PATH="$CONDA_USER_HOME/bin:$PATH"
    fi
fi
unset __conda_setup
