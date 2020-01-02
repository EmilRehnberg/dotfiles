#!/usr/bin/env sh
export R_HISTFILE="$XDG_CACHE_HOME/R/history" # combined with function in .Rprofile
export R_HISTSIZE=10000
export R_ENVIRON_USER="$XDG_CONFIG_HOME/R/env"
export R_PROFILE_USER="$XDG_CONFIG_HOME/R/profile"
export R_STARTUP_DEBUG=TRUE
