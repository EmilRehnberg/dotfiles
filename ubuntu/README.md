# Ubuntu setup

## installations

### neovim / nvim

```sh
sudo add-apt-repository ppa:neovim-ppa/stable
sudo apt-get update
sudo apt-get install neovim
sudo apt-get install python-dev python-pip python3-dev python3-pip

pip install pynvim
pip3 install pynvim
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
