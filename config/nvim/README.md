# neovim README

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
