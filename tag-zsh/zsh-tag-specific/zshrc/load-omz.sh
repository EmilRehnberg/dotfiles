#!/usr/bin/env bash
export ZSH=$HOME/.oh-my-zsh
export UPDATE_ZSH_DAYS=2
ZSH_THEME="simple" # other themes: ~/.oh-my-zsh/themes/
plugins=(bundler common-aliases debian git rails ruby screen tmux) # more plugins: ~/.oh-my-zsh/plugins
sourceDirectory "$HOME/.omz-tag-specific/plugins"
source $ZSH/oh-my-zsh.sh
