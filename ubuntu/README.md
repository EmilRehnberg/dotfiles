# Ubuntu setup

Remember that the default shell `gnome-terminal` is not a login shell (by default), hence e.g. zlogin is not run under zsh.

## installations

### remap CAPS to ctrl

install `tweaks` from Ubuntu software

### base tools

```sh
sudo apt install apt-transport-https software-properties-common

sudo wget -q https://apt.thoughtbot.com/thoughtbot.gpg.key -O /etc/apt/trusted.gpg.d/thoughtbot.gpg
echo "deb https://apt.thoughtbot.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/thoughtbot.list

sudo apt-add-repository ppa:git-core/ppa
sudo apt update
sudo apt upgrade
sudo apt install gcc make pkg-config autoconf automake python3-docutils libseccomp-dev libjansson-dev libyaml-dev libxml2-dev
sudo apt install tmux vim rcm curl zsh git
chsh --shell ${which zsh} $USER
```

Restart after `chsh` for it to take effect!

### neovim / nvim

```sh
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip

python -m pip install pynvim
python3 -m pip install pynvim neovim-remote
```

install dein

```sh
curl https://raw.githubusercontent.com/Shougo/dein.vim/master/bin/installer.sh > /tmp/installer.sh
sh /tmp/installer.sh ~/.cache/dein
```

install plugins

```vim
call dein#install()
```

install ctags

```sh
# snap find ctags
# snap info universal-ctags
sudo snap install universal-ctags
```

### java

```sh
sudo add-apt-repository ppa:linuxuprising/java
sudo apt-get update
sudo apt-get install default-jdk software-properties-common oracle-java12-installer
```

### R

from [linuxize](https://linuxize.com/post/how-to-install-r-on-ubuntu-18-04/)

```sh
sudo apt-key adv --keyserver keyserver.ubuntu.com --recv-keys E298A3A825C0D65DFD57CBB651716619E084DAB9
sudo add-apt-repository 'deb https://cloud.r-project.org/bin/linux/ubuntu bionic-cran35/'
sudo apt update
sudo apt install r-base
R --version

sudo apt install libxml2-dev libcurl4-openssl-dev
Rscript --vanilla -e 'install.packages(c("magrittr", "R.utils", "curl", "xml2", "httr", "rvest", "tidyverse"), repos = "https://ftp.acc.umu.se/mirror/CRAN")'
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

# for rbenv
cd ~/.rbenv && src/configure && make -C src
rbenv init
mkdir -p "$(rbenv root)"/plugins
git clone https://github.com/rbenv/ruby-build.git "$(rbenv root)"/plugins/ruby-build # ruby-build
rbenv install 2.6.3
git clone git://github.com/jf/rbenv-gemset.git $HOME/.rbenv/plugins/rbenv-gemset # gems
rbenv global 2.6.3

sudo snap install ruby --classic

gem install neovim mdl reek scss_lint sqlint sass
```

### node environment

node / npm / [yarn](https://yarnpkg.com/lang/en/docs/install/#debian-stable)

```sh
sudo apt-get install libssl1.0-dev nodejs-dev node-gyp npm yamllint xmlstarlet cmdtest

sudo npm install --global bash-language-server prettier eslint
npm install --global typescript
npm install --global coc-word coc-snippets coc-prettier coc-git coc-neosnippet
npm install --global coc-json coc-yaml coc-html coc-css coc-vimlsp coc-sh coc-markdownlint
npm install --global coc-tsserver coc-tslint
npm install --global coc-vimtex coc-r-lsp coc-python coc-scala

curl -sL https://deb.nodesource.com/setup_12.x | sudo -E bash -
curl -sS https://dl.yarnpkg.com/debian/pubkey.gpg | sudo apt-key add -
echo "deb https://dl.yarnpkg.com/debian/ stable main" | sudo tee /etc/apt/sources.list.d/yarn.list
sudo apt-get update && sudo apt-get install -y yarn nodejs
yarn global add neovim

yarn add --dev prettier-eslint-cli prettier-standard jshint fecs babel-cli babel-preset-flow
yarn add --dev fixjson jsonlint
yarn add global alex
yarn add global markdownlint remark-lint textlint textlint-rule-no-todo write-good
yarn add global sass-lint stylelint
yarn add global tslint typescript swaglint
```

### golang

visit their [dl](https://golang.org/dl/) page

```sh
cd /tmp && wget https://dl.google.com/go/go1.12.6.linux-amd64.tar.gz
sudo tar -xvf go1.12.6.linux-amd64.tar.gz
sudo mv go /usr/local    # for $GOBIN
mkdir -p $"HOME"/code/go # for $GOPATH

go get github.com/jackc/sqlfmt/...
```

### linting tools

the below are working with `ale` + `deoplete`

```sh
snap install shellcheck jq tidy
sudo apt-get install yamllint pylint
cd $(mktemp -d); go mod init tmp; go get mvdan.cc/sh/cmd/shfmt
go get github.com/errata-ai/vale

yarn global add alex prettier babel-cli babel-preset-flow prettier-eslint-cli prettier-standard
sudo npm install --global bash-language-server swaglint sass-lint stylelint markdownlint remark-lint remark remark-preset-lint-markdown-style-guide textlint textlint-rule-no-todo fixjson jsonlint eslint fecs jshint standard typescript xo htmlhint
gem install sqlint scss_lint mdl
PKGS="futures jedi yapf python-language-server[all] vim-vint bandit black isort prospector pyflakes autopep8 pycodestyle pylama reorder-python-imports vulture proselint gitlint flake8"
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
cd redpen-redpen-1.10.2/
./mvnw clean install

# R Packages
Rscript --vanilla -e 'devtools::install_github(c("jimhester/lintr", "r-lib/styler"))'
```

desktop installers, visit

- [languagetools](https://languagetool.org/)

## setups

### Anki

```sh
cd ~/.local/share/Anki2/
git clone https://github.com/EmilRehnberg/anki-css css
git clone https://github.com/EmilRehnberg/js-for-anki js
```

### copyq - clipboard manager

```sh
sudo add-apt-repository ppa:hluk/copyq
sudo apt update
sudo apt install copyq
```

