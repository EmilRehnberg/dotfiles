# tags README

tools comparison [@github](https://github.com/oracle/opengrok/wiki/Comparison-with-Similar-Tools)

## ctags

Currently using `universal-ctags` [hp](https://ctags.io/) since it seems well-maintained. NOTE: `snap` installs have been buggy, you might have to build from source, see [docs](https://github.com/universal-ctags/ctags/blob/master/docs/autotools.rst).

- [article](https://andrew.stwrt.ca/posts/vim-ctags/)

### dependecies

- universal-ctags [@github](https://github.com/universal-ctags/ctags)
  - brew [@github](https://github.com/universal-ctags/homebrew-universal-ctags)
  - packcc [@github](https://github.com/enechaev/packcc)
- (don't use Exubulent ctags)

### vim plugins

- `taglist` [@github](https://github.com/vim-scripts/taglist.vim)
- `tagbar` [@github](https://github.com/majutsushi/tagbar)
  - [article](https://jdhao.github.io/2018/09/28/nvim_tagbar_install_use/)

#### other projects

potentially interesting projects include

- `neotags` [@github](https://github.com/c0r73x/neotags.nvim)
- `gen_tags` [@github](https://github.com/jsfaint/gen_tags.vim)
  - Async plugin for vim and neovim to ease the use of `ctags`/`gtags`
- `gutentags` [@github](https://github.com/ludovicchabant/vim-gutentags)
  - A Vim plugin that manages your tag files [hp](https://bolt80.com/gutentags/)

## gtags

GNU GLOBAL source code tagging system

Supports 6 languages (C, C++, Yacc, Java, PHP4 and assembly) natively

- gnu.org [hp](http://www.gnu.org/software/global/)
