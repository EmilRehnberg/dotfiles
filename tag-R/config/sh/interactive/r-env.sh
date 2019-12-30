#!/usr/bin/env sh
export R_HISTFILE="$HOME/.cache/R/history" # combined with function in .Rprofile
export R_HISTSIZE=10000
export R_ENVIRON_USER="$HOME/.config/R/env"
export R_PROFILE_USER="$HOME/.config/R/profile"
export R_STARTUP_DEBUG=TRUE
