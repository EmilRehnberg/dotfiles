# tag-zsh README

Running Interactive login shells is my typical use-case. Running a non-login shell is perhaps done from a GUI application.

Make sure 

1. don't mess with no `/etc/` files
2. that files in `$HOME` are links to `.dotfiles/tag-zsh`
3. `zshenv` -- base script
4. `zprofile` -- login interactive shell script to be overrun by `zshrc`
5. `zshrc` -- common interactive settings, set most of the `PATH`
6. `zlogin` -- personal interactive settings with precedence, add `rvm` to `PATH`
7. `profile` -- only read if `zshrc` is missing (in `zsh`) - keep empty or perhaps let the shell blow up?

`/etc/zprofile` does some base `PATH` setting. So set `PATH` after that.

```
+----------------+-----------+-----------+------+
|                |Interactive|Interactive|Script|
|                |login      |non-login  |      |
+----------------+-----------+-----------+------+
|/etc/zshenv     |    A      |    A      |  A   |
+----------------+-----------+-----------+------+
|~/.zshenv       |    B      |    B      |  B   |
+----------------+-----------+-----------+------+
|/etc/zprofile   |    C      |           |      |
+----------------+-----------+-----------+------+
|~/.zprofile     |    D      |           |      |
+----------------+-----------+-----------+------+
|/etc/zshrc      |    E      |    C      |      |
+----------------+-----------+-----------+------+
|~/.zshrc        |    F      |    D      |      |
+----------------+-----------+-----------+------+
|/etc/zlogin     |    G      |           |      |
+----------------+-----------+-----------+------+
|~/.zlogin       |    H      |           |      |
+----------------+-----------+-----------+------+
|                |           |           |      |
+----------------+-----------+-----------+------+
|                |           |           |      |
+----------------+-----------+-----------+------+
|~/.zlogout      |    I      |           |      |
+----------------+-----------+-----------+------+
|/etc/zlogout    |    J      |           |      |
+----------------+-----------+-----------+------+
```

(table above is from a [medium post](https://medium.com/@rajsek/zsh-bash-startup-files-loading-order-bashrc-zshrc-etc-e30045652f2e))
