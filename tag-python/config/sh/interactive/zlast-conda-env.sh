#!/usr/bin/env sh
# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!

CONDA_SYSTEM_HOME="/opt/homebrew/Caskroom/miniconda/base"
__conda_setup="$("$CONDA_SYSTEM_HOME"'/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "$CONDA_SYSTEM_HOME/etc/profile.d/conda.sh" ]; then
        . "$CONDA_SYSTEM_HOME/etc/profile.d/conda.sh"
    else
        export PATH="$CONDA_SYSTEM_HOME/bin:$PATH"
    fi
fi
unset __conda_setup

# <<< conda initialize <<<
