# emil4dinner's dotfiles

## Dependencies

- git
- [rcm](https://github.com/thoughtbot/rcm) dotfile manager

## Structure

use `rcm` directories for certain contexts

- china / sweden for country specific dotfiles
- macos / ubuntu for OS specific dotfiles

tags mostly for language/utility scoping

hosts for different hosts

## Installation

### (0. Backup current dotfiles to keep -- optional)

### 1. Clone dotfile repo into ~/.dotfiles

```
git clone --recursive https://github.com/emilrehnberg/dotfiles $HOME/.dotfiles
```

### 2. Run rcup

```
RCRC=~/.dotfiles/host-shenmishe/rcrc rcup
```

`RCRC` variable is needed if no `.rcrc` is available in the home directory

### 3. Download git submodules

```sh
git submodules # something something, unclear at this point
```

## Setup nvim

### Install nvim

### Install Shougo/dein.vim

from [dein](https://github.com/Shougo/dein.vim)

```
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
sh /tmp/installer.sh $HOME/.cache/dein
nvim +'call dein#install()' +qall
```

## TODO

Think about installation instructions/scripts - where should they live?

- explain other installations for a new installation?
  - installation manager: e.g. `brew`, `apt-get`
  - utilities: `git`, Dropbox, Google Drive
  - languages: `R`, `python`, `ruby`, `golang`, `rust`
  - misc: spotify, browsers, tex, anaconda, jupyter, jupytext
- setup contexts
  - tags: programming languages and utilities - set `TAGS` in specific directories

