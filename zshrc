
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="simple"

# User configuration
# You may need to manually set your language environment
ENCODING=en_US.UTF-8
export LANG=$ENCODING
export LC_ALL=$ENCODING
export LC_CTYPE=$ENCODING

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
if [[ $TERM_PROGRAM == "iTerm.app" || $DESKTOP_SESSION == "ubuntu" ]] ; then
  ZSH_TMUX_AUTOSTART=true
fi
ZSH_TMUX_AUTOCONNECT=false

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler common-aliases debian git rails ruby screen tmux)

source $ZSH/oh-my-zsh.sh

# Aliases
# post source of the global config aliasing
unalias ag
alias agr='sudo $apt_pref upgrade'
alias be='bundle exec'
alias c=clear
alias ga='git add '
alias gb='git branch '
alias gc='git commit '
alias gco='git checkout '
alias gd='git diff '
alias gdc='git diff --cached '
alias glp='git log -p '
alias gma='git commit -am'
alias gri='git rebase --interactive '
alias gs='git status '
alias R='R --vanilla'
alias rm="rm -f"
alias screen='TERM=xterm-256color screen'
alias tmux='tmux -2'
alias yt='youtube-dl -t'
alias yt_dl_mp3='youtube-dl -t --extract-audio --audio-format mp3 --audio-quality 5'

# Preferred editor for local and remote sessions
export EDITOR='vim'

# Variables
# For mac colors in terminal
DOTFILES="$HOME/dotfiles"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export GOPATH="$HOME/code/go"
export GOBIN="${GOPATH}/bin"

# load shell function
# source $DOTFILES/sh/functions.sh

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTIGNORE="ls:ll:cd:pwd"
export HISTSIZE=10000
export HISTFILESIZE=20000
export TERM="xterm-256color"

PATHDIRS=(
  $HOME/.bin
  $HOME/.bin/helpers
  $GOBIN
  $HOME/.rvm/bin
  /usr/local/games
  /usr/local/go/bin
  /usr/local/heroku/bin
  /usr/local/lib/node
  /usr/local/lib/node_modules
  $PATH
)
export PATH=`echo $PATHDIRS|tr " " ":"`

