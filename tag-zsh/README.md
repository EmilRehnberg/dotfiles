# tag-zsh README

Running Interactive login shells is my typical use-case. Running a non-login shell is perhaps done from a GUI application.

So, no need for `zprofile` or `zlogin` files. Move all settings to `zshrc` unless something is setup automatically. 

Make sure 

1. no `/etc/` files
2. files under `$HOME` is in `.dotfiles/tag-zsh`
3. `zshenv` -- zsh base
4. `zprofile` -- personal interactive settings to be overrun by `zshrc`
5. `zshrc` -- common interactive settings, set most of the `PATH`
6. `zlogin` -- personal interactive settings with precedence, add `rvm` to `PATH`

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
