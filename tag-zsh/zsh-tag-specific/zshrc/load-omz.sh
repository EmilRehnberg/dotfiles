#!/usr/bin/env bash
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=2
ZSH_THEME="simple"                                                       # ~/.oh-my-zsh/themes/
export plugins=(command-not-found colorize colored-man-pages git-prompt) # ~/.oh-my-zsh/plugins
sourceDirectory "$HOME/.omz-tag-specific/plugins"
source $ZSH/oh-my-zsh.sh
