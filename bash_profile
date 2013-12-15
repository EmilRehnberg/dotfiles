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


##
# Your previous /Users/emilapoex/.bash_profile file was backed up as /Users/emilapoex/.bash_profile.macports-saved_2013-12-09_at_13:48:49
##

# MacPorts Installer addition on 2013-12-09_at_13:48:49: adding an appropriate PATH variable for use with MacPorts.
export PATH=/opt/local/bin:/opt/local/sbin:$PATH
# Finished adapting your PATH environment variable for use with MacPorts.

