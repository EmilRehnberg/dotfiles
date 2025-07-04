# emil4dinner's dotfiles

## set-up history cache dir

NOTE: with this history can't be save >.<

```sh
mkdir -p $HOME/.cache/sh/
```

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

- `DOTFILES_DIRS`: order-significant(!) OS and region
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
RCRC=~/.dotfiles/${HOSTNAME}/rcrc rcup
```

`RCRC` variable is needed if no `.rcrc` is available in the home directory

### 3. Download git submodules

```sh
git submodules init
git submodules update
```

## Installation

See OS specific `README`

## SSH

```sh
mkdir -p $HOME/.ssh
chmod 700 $HOME/.ssh
ssh-keygen -t rsa
ssh-add ~/.ssh/id_rsa
```

- `$HOME/.ssh/id_rsa` – contains your private key.
- `$HOME/.ssh/id_rsa.pub` – contain your public key.
- to push with SSH, make sure the remote set (`.git/config`) is using the SSH link (e.g. `git@github.com:EmilRehnberg/dotfiles.git`)

## vi configuration

`neovim` is the preferred vi-like editor that I'm using.

see `config/nvim/README.md` for details.

## To do

Think about installation instructions/scripts - where should they live?

- explain other installations for a new installation
  - utilities: Dropbox, Google Drive
  - misc: spotify, browsers, tex
