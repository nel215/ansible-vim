#!/bin/bash

# build-dep
sudo apt-get install git gettext libncurses5-dev libacl1-dev libgpm-dev
# perl
sudo apt-get install libperl-dev
# ruby
sudo apt-get install ruby-dev
# lua
sudo apt-get install lua5.2 liblua5.2-dev luajit libluajit-5.1
# for source editting
sudo apt-get install autoconf automake cproto
# python
sudo apt-get install zlib1g-dev libbz2-dev libsqlite3-dev libssl-dev
CONFIGURE_OPTS="--enable-shared" pyenv install 2.7.12
CONFIGURE_OPTS="--enable-shared" pyenv install 3.5.2
# configure
cd vim && pyenv global 2.7.12 3.5.2 && LDFLAGS="-Wl,-rpath=${HOME}/.pyenv/versions/2.7.12/lib:${HOME}/.pyenv/versions/3.5.2/lib" ./configure --with-features=huge --enable-perlinterp --enable-pythoninterp --enable-python3interp --enable-rubyinterp --enable-luainterp --with-luajit --enable-fail-if-missing
