#!/usr/bin/env bash
export ZSH="$HOME/.oh-my-zsh"
export UPDATE_ZSH_DAYS=2
ZSH_THEME="simple" # ~/.oh-my-zsh/themes/
export plugins=(command-not-found colorize colored-man-pages custom-completions gitfast git-prompt) # ~/.oh-my-zsh/plugins
ZSH_CUSTOM="$XDG_CONFIG_HOME/omz"
sourceDirectory "$ZSH_CUSTOM/load-env"
ZSH_COLORIZE_STYLE="colorful"
source "$ZSH/oh-my-zsh.sh"
