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

- `--smart-case`: smart case, same as `zsh` and other tools
- `--vimgrep`: Show results with every match on its own line, including line numbers and column numbers. With this option, a line with more than one match will be printed more than once.
