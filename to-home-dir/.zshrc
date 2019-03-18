
export ZSH=$HOME/.oh-my-zsh

# Look in ~/.oh-my-zsh/themes/
ZSH_THEME="simple"

ENCODING=en_US.UTF-8
export LANG=$ENCODING
export LC_ALL=$ENCODING
export LC_CTYPE=$ENCODING

# Uncomment the following line to change how often to auto-update (in days).
export UPDATE_ZSH_DAYS=2

HIST_STAMPS="yyyy-mm-dd"

# for auto-completion of .. etc
zstyle ':completion:*' special-dirs true

if [[ $TERM_PROGRAM == "iTerm.app" || $DESKTOP_SESSION == "ubuntu" ]] ; then
  ZSH_TMUX_AUTOSTART=true
fi
ZSH_TMUX_AUTOCONNECT=false

# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
plugins=(bundler common-aliases debian git rails ruby screen tmux)

source $ZSH/oh-my-zsh.sh

# post source of the global config aliasing
unalias ag
alias R='R --vanilla'
alias screen='TERM=xterm-256color screen'
alias tmux='tmux -2'
alias yt='youtube-dl -t'
alias yt_dl_mp3='youtube-dl --extract-audio --audio-format mp3 --audio-quality 320K --add-metadata'
alias walkman='mpv --no-audio-display --no-video'

# Preferred editor for local and remote sessions
export EDITOR='nvim'

# For mac colors in terminal
DOTFILES="$HOME/dotfiles"
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced

export GOPATH="$HOME/code/go"
export GOBIN="${GOPATH}/bin"

# load shell function
# source $DOTFILES/sh/functions.sh
source $DOTFILES/sh/macos-sh-functions.sh

# for setting history length see HISTSIZE and HISTFILESIZE in bash(1)
export HISTIGNORE="ls:ll:cd:pwd"
export HISTSIZE=10000
export HISTFILESIZE=20000
export TERM="xterm-256color"

export RSTUDIO_PANDOC="/Applications/RStudio.app/Contents/MacOS/pandoc/"

# r-history variable, combined with function in .Rprofile
export R_HISTFILE=~/.Rhistory

export WTF_OWM_API_KEY="f8bda36b3acb21f0b808431d01b763be"
export WTF_GOOGLE_CAL_CLIENT_ID="74769112368-5i704cv2m68r7hnk2f3m4o9a6q57vmcd.apps.googleusercontent.com"
export WTF_GOOGLE_CAL_CLIENT_SECRET="m_C-8ZwlKHYgg_Qbw0UI_eQq"
export WTF_JIRA_API_KEY="lyF6BafM9vQdEmxfctbgE7E3"

PATHDIRS=(
  $HOME/.bin
  $HOME/.bin/helpers
  $GOBIN
  $HOME/.rvm/bin
  /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin
  /usr/local/games
  /usr/local/go/bin
  /usr/local/heroku/bin
  /usr/local/lib/node
  /usr/local/lib/node_modules
  $PATH
)
export PATH=`echo $PATHDIRS|tr " " ":"`

