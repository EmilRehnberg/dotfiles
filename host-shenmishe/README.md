# 神秘的蛇 settings

MacBook Pro early 2013 retina display [model](https://everymac.com/systems/apple/macbook_pro/specs/macbook-pro-core-i5-2.6-13-early-2013-retina-display-specs.html)

# Files

- `rcrc`: `rcm` settings
- `zsh-host-specific`: sets `PATH` environment variable

# To install

## homebrew

list brew formulas with `brew list`

```sh
# JSON handling - linting etc.
brew install jq

# vale -- natural language linter
brew tap ValeLint/vale
brew install vale
```

## Node Package Manager - npm

`bash-language-server` is written in `npm` checkout out [github](https://github.com/mads-hartmann/bash-language-server)

```sh
npm install --global bash-language-server
npm install --global prettier
npm install --global eslint
```

## yarn package manager (node)

installation

```sh
brew install yarn
brew install yamllint
brew install xmlstarlet # for xmllint
```

packages

```sh
yarn add --dev prettier-eslint-cli prettier-standard jshint fecs babel-cli babel-preset-flow
yarn add --dev fixjson jsonlint
yarn add global alex
yarn add global markdownlint remark-lint textlint textlint-rule-no-todo write-good
yarn add global sass-lint stylelint
yarn add global tslint typescript swaglint
```

## Python's pip

check installed packages with `pip list`

```sh
pip install proselint
pip install --upgrade autopep8 black flake8 isort mypy pyflakes pylama pylint futures yapf
```

## Ruby gems

check installed gems with `gem list`

```sh
gem install mdl
gem install reek # etc
gem install scss_lint
gem install sqlint
```

## Golang

```sh
go get github.com/jackc/sqlfmt/...
```
