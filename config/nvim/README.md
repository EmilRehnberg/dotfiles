# neovim README

## Plugin manager

Vim plugin `dein`, perhaps it's on the way out.
But it fits well with `rcm`, thanks to the way plugins can be added in extra files (in `rcplugin`).

## Completion

Plugin `neoclide/coc.nvim`, probably good to review this choice.

## LLM

Undecided. Grok listed some plugins.

                              Stars    Forks   PRs Closed    PRs Open    Last commit
`madox2/vim-ai`                 957      93       55            2          last month
`BlakeJC94/vim-chat`              5       0       0             0          3m ago
`CoderCookE/vim-chatgpt`        260      33       24            1          5m ago
`olimorris/codecompanion.nvim` 4200     245      867            9          4h ago

## vim sessions

Stored under `sessions`.

Saved vim sessions for different situations, configs, projects or whatever.

## vi linting & fixing

used for `nvim`

```sh
pip install pynvim
```

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

### Anki

visit their [download](https://apps.ankiweb.net/) page.

## vimwiki

used for notes.

1. clone the notes repo (use `wiki` in the url).
2. set-up a host-specific vimwiki config with settings.


## python configuration

can be a mess, if `:checkhealth` returns errors on not accessing either python version then check in the `brew` directories on `macos` and update in `init.vim` or `plugin/macos-python.vim`

```vimscript
let g:python2_host_prog = '/usr/local/Cellar/python@2/2.7.16/bin/python2'
```

or errors about about neovim and pynvim python packages then try e.g.

```
pip3 install --user --upgrade pynvim
/usr/local/bin/python2.7 -m pip install --user --upgrade pynvim
```
