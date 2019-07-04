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
git submodules # something something, unclear at this point
```

## Installation

See OS specific `README`

## vi linting & fixing

### text

Under contruction/investigation.

### js

ATM `standardjs` is setup.
I like the
  style - Seattle style (no semicolons),
  has fixing also,
  less config.
benri ha benri da.

`jshint` seems more popular, using semicolons etc.
`jshint` will require `.jshintrc` with setups etc.
So maybe I'll use that if I have to.
Doesn't provide fixing, just linting.

### python

Under investigation.

### R

use `lintr` and `styler`.

## To do

Think about installation instructions/scripts - where should they live?

- explain other installations for a new installation
  - utilities: Dropbox, Google Drive
  - misc: spotify, browsers, tex
