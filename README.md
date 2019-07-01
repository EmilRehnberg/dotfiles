# emil4dinner's dotfiles

## Dependencies

- git
- [rcm](https://github.com/thoughtbot/rcm) dotfile manager

## Structure

use `rcm` directories for certain contexts

- china / sweden for country specific dotfiles
- `macOS` / `Ubuntu` / `WSL` for OS specific dotfiles

tags mostly for language/utility scoping

hosts for different hosts

### RCRC setup

- `DOTFILES_DIRS`: OS and region
- `EXCLUDES`: all dirs/files that you don't want to symlink (tags and hosts are excluded by default)
- `SYMLINK_DIRS`: dirs/files to symlink e.g. git submodules
- `TAGS`: desired tags
- `UNDOTTED`: files to symlink but w/o dot prefix e.g. `bin`

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

See OS specific `README`

### Install Shougo/dein.vim

from [dein](https://github.com/Shougo/dein.vim)

```
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
sh /tmp/installer.sh $HOME/.cache/dein
nvim +'call dein#install()' +qall
```

## To do

Think about installation instructions/scripts - where should they live?

- explain other installations for a new installation?
  - installation manager: e.g. `brew`, `apt-get`
  - utilities: `git`, Dropbox, Google Drive
  - languages: `R`, `python`, `ruby`, `golang`, `rust`
  - misc: spotify, browsers, tex, anaconda, jupyter, jupytext
- setup contexts
  - tags: programming languages and utilities - set `TAGS` in specific directories
