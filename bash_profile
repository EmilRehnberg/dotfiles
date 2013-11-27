#!/bin/bash
BASH_DIR="${HOME}/dotfiles/bash-sources/"
source ${BASH_DIR}/bash_aliases
source ${BASH_DIR}/bash_variables
source ${BASH_DIR}/bash_functions

# Added for chruby config.
if hash chruby > /dev/null 2>&1 ; then
  chruby ruby
fi

if test -f ~/.rvm/scripts/rvm; then
  [ "$(type -t rvm)" = "function" ] || source ~/.rvm/scripts/rvm
fi

# For git-completion of commands and branch names
. ~/.git/git-completion.bash

