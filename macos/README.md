# macos README

`rcm` directory used specifically for macos.

alter `DOTFILES_DIRS` to include this folder if you want these macos specific dotfiles

## settings

check keyboard modifier keys to remap caps lock.

Keyboard > Keyboard Shortcuts > Modifier Keys > (chose keyboard)

### set Meta key

`Meta` key is used for terminal shortcuts.

#### iTerm2

Go to settings, `Profiles` > `Keys`, choose `Esc+` for "Left Option key".
I.e. do not set it to `Meta`.. don't ask me why :)

#### Terminal

TODO

## installations

`brew`, `CopyClip`, `Anki` and `iTerm2` are available in App stores

### PLs

#### using brew

PLs w tools

```sh
brew install golang
brew install python miniconda
brew install node yarn
```

#### python

`python3` is pre-installed

For neovim + plugins

```sh
python3 -m pip install pynvim neovim-remote black notebook jupyterlab
```

#### ruby

#### R

### Tools

#### using brew

Tools:

```sh
brew install neovim tmux cmake universal-ctags gnutls youtube-dl yt-dlp mpv R
brew install wget pandoc shellcheck
```

#### neovim / nvim

install dein

```sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
sh /tmp/installer.sh ~/.cache/dein
```

install plugins

```vim
call dein#install()
```

##### ctags

```sh
# snap find ctags
# snap info universal-ctags
sudo snap install universal-ctags
```

##### linting

```sh
```

#### node

#### TeX

install pandoc with brew

If that's not enough for `pandoc` to work,
link `pdflatex` to a bin folder in your `$PATH`

```sh
ln -s /Library/TeX/Distributions/.DefaultTeX/Contents/Programs/x86-64/pdflatex /usr/local/bin
```

##### BasicTex

try install BasicTeX with brew

```sh
brew install basictex --cask
```

if that doesn't work, search for a `.pkg`, DL and install.

##### MacTex

You can DL a [pkg](https://www.tug.org/mactex/mactex-download.html)

or if the system allows you:

```sh
brew install --cask mactex
```

#### taskwarrior

build from [source](https://github.com/GothenburgBitFactory/taskwarrior)
