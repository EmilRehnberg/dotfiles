#!/bin/bash 
BASH_DIR="${HOME}/dotfiles/bash-sources/"
source ${BASH_DIR}/bash_aliases
source ${BASH_DIR}/bash_variables
source ${BASH_DIR}/bash_functions

# Added for chruby config.
if hash chruby > /dev/null 2&>1 ; then 
  chruby ruby
fi

