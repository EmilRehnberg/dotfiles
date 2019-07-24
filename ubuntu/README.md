# Ubuntu setup

Remember that the default shell `gnome-terminal` is not a login shell (by default), hence e.g. zlogin is not run under zsh.

## installations

### base tools

```sh
sudo add-apt-repository ppa:martin-frost/thoughtbot-rcm
sudo apt-get update
sudo apt-get upgrade
sudo apt-get install tmux vim rcm curl zsh
chsh --shell ${which zsh} $USER
```

Restart after `chsh` for it to take effect!

### neovim / nvim

```sh
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip
sudo apt-get install exuberant-ctags

pip install pynvim
pip3 install pynvim

### java

```sh
sudo add-apt-repository ppa:linuxuprising/java
sudo apt-get update
sudo apt-get install default-jdk software-properties-common oracle-java12-installer
```

### python

install anaconda from [dl-page](https://www.anaconda.com/distribution/#download-section)

```sh
sudo apt-get install cmake qt5-default python-pyside pyqt5-dev-tools qtcreator python-qtconsole
PACKAGES="pandas pyqt5 pyside2 pyqt jupyter"
python3 -m pip install ${PACKAGES}
python -m pip install pyside

conda install numpy pandas scipy matplotlib seaborn scikit-learn
conda install -c conda-forge jupytext
```

### ruby environment

use `rbenv`
to install e.g. `2.6.3`

```sh
sudo apt-get install libssl-dev
sudo apt-get install autoconf bison build-essential libssl-dev libyaml-dev libreadline6-dev zlib1g-dev libncurses5-dev libffi-dev libgdbm5 libgdbm-dev

cd ~/.rbenv && src/configure && make -C src
rbenv init
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build # ruby-build
rbenv install 2.6.3
git clone git://github.com/jf/rbenv-gemset.git $HOME/.rbenv/plugins/rbenv-gemset # gems
rbenv global 2.6.3

gem install neovim
```

### node environment

node / npm / [yarn](https://yarnpkg.com/lang/en/docs/install/#debian-stable)

```sh
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install yarn
yarn global add neovim

sudo apt-get install libssl1.0-dev nodejs-dev node-gyp npm
```

### golang

visit their [dl](https://golang.org/dl/) page

```sh
cd /tmp && wget https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
sudo tar -xvf go1.12.6.linux-amd64.tar.gz
sudo mv go /usr/local    # for $GOBIN
mkdir -p $"HOME"/code/go # for $GOPATH
```

### linting tools

the below are working with `ale` + `deoplete`

```sh
sudo apt-get install shellcheck yamllint pylint jq tidy
cd $(mktemp -d); go mod init tmp; go get mvdan.cc/sh/cmd/shfmt
go get github.com/errata-ai/vale

yarn global add alex prettier babel-cli babel-preset-flow prettier-eslint-cli prettier-standard
sudo npm install --global bash-language-server swaglint sass-lint stylelint markdownlint remark-lint remark remark-preset-lint-markdown-style-guide textlint textlint-rule-no-todo fixjson jsonlint eslint fecs jshint standard typescript xo htmlhint
gem install sqlint scss_lint mdl
PKGS="futures jedi yapf python-language-server[all] vim-vint bandit black isort prospector pyflakes autopep8 pycodestyle pylama reorder-python-imports vulture proselint gitlint"
PY3_ONLY_PKGS="mypy pyre-check"
pip install --upgrade $"PKGS"
pip3 install --upgrade $"PKGS" $"PY3_ONLY_PKGS"

# pgFormatter
# visit https://github.com/darold/pgFormatter/releases
cd /tmp
wget tarball
tar xzf pgFormatter-4.0.tar.gz
cd pgFormatter-4.0/
perl Makefile.PL
make && sudo make install

# RedPen
# visit release page: https://github.com/redpen-cc/redpen/releases/
cd /tmp
wget tarball
tar xvf redpen-1.10.2.tar.gz
cd redpen-redpen-1.10.2/redpen-cli


# R Packages
remotes::install_github("r-lib/styler")
remotes::install_github("jimhester/lintr")
```

desktop installers, visit

- [languagetools](https://languagetool.org/)
