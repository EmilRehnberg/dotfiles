# dotfiles and setup for systems

## Set-up dotfiles in home directory

Run to sym-link home directory files to dotfiles repo files (assumes bash 3)

```
./run-linking-setup.sh
```

## Fix nvim

`nvim`:s `config` directory has some files that are ignored. E.g. plugins.

### Requirements

from [dein](https://github.com/Shougo/dein.vim)

`git` is needed in `$PATH`

Run

```
cd /tmp
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > installer.sh
sh ./installer.sh ~/.cache/dein
nvim +'call dein#install()' +qall
```

