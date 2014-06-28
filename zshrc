# Path to your oh-my-zsh installation.
export ZSH=$HOME/.oh-my-zsh

# Set name of the theme to load.
# Look in ~/.oh-my-zsh/themes/
# Optionally, if you set this to "random", it'll load a random theme each
# time that oh-my-zsh is loaded.
# ZSH_THEME="random"
# ZSH_THEME="nanotech"
ZSH_THEME="simple"
# ZSH_THEME="terminalparty"

# Aliases
alias c=clear
alias gma='git commit -am'
alias R='R --vanilla'
alias screen='TERM=xterm-256color screen'
alias tmux='tmux -2'
alias yt='youtube-dl -t'
alias yt_dl_mp3='youtube-dl -t --extract-audio --audio-format mp3 --audio-quality 5'


# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=2

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to disable command auto-correction.
# DISABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# The optional three formats: "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
HIST_STAMPS="yyyy-mm-dd"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# for auto-completion of .. etc
zstyle ':completion:*' special-dirs true

# tmux config
# ZSH_TMUX_AUTOSTART=true
ZSH_TMUX_AUTOCONNECT=false
ZSH_TMUX_FIXTERM_WITH_256COLOR=true

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler common-aliases debian git rails ruby screen tmux)

source $ZSH/oh-my-zsh.sh

# User configuration
# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/dsa_id"

# Variables
# For mac colors in terminal
DOTFILES="$HOME/dotfiles"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

# load shell function
# source $DOTFILES/sh/functions.sh

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTIGNORE="ls:ll:cd:pwd"
export HISTSIZE=10000
export HISTFILESIZE=20000
# export TERM=screen-256color #vim
export TERM="xterm-256color"

export PATH="/usr/local/heroku/bin:/usr/local/bin:/home/emil/.bin:/home/emil/.bin/tmux-sessions:/home/emil/.bin/helpers:/usr/local/heroku/bin:/usr/local/bin:/home/emil/.bin:/home/emil/.bin/tmux-sessions:/home/emil/.bin/helpers:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/home/emil/.rvm/bin:/usr/local/lib/node:/usr/local/lib/node_modules:/home/emil/.rvm/bin:/usr/local/lib/node:/usr/local/lib/node_modules"
