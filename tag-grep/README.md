# grep

Referring to "printing lines mathcing a pattern" (typically done with GNU grep)

## vim

`vimgrep` is slow. Use ripgrep's `rg` CLI.

### Usage

```vim
:Rg <string|pattern>
```

### Requirements

- `rg` CLI
- vim plugin [@github](http://github.com/jremmen/vim-ripgrep)

### settings

for `rg` command

- `-g, --glob <GLOB>`: Include or exclude directories from searching. Prepend with `!` to blacklist.
- `--smart-case`: smart case, same as `zsh` and other tools
- `-t, --type <TYPE>` let's you search only files of a certain type. Add types in `.ripgreprc`.
- `-T, --type-not <TYPE>` let's you exclude files of a certain type.
- `--vimgrep`: Show results with every match on its own line, including line numbers and column numbers. With this option, a line with more than one match will be printed more than once.

get more help using `rg --help`

use a `~/.ripgreprc` e.g. [@github](https://github.com/BurntSushi/ripgrep/blob/master/GUIDE.md#configuration-file)
