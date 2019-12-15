#!/bin/sh

GITREPO=https://raw.githubusercontent.com/arielril/macos-setup/master

# Install Homebrew (installs xcode command line as well)
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

brew update
brew upgrade
brew bundle --file=Brewfile

# Copy base files from repo
curl $GITREPO/.vimrc > ~/.vimrc
curl $GITREPO/.gitconfig > ~/.gitconfig
curl $GITREPO/fish/config.fish > ~/.config/fish/config.fish

# install npm
npm i -g npm@latest
npm i -g eslint gitignore jest knex moment-timezone nodemon ramda ts-node typescript speed-test mocha

# install fisher
curl https://git.io/fisher --create-dirs -sLo ~/.config/fish/functions/fisher.fish;

# add some packages using fisher
fisher add rafaelrinaldi/pure franciscolourenco/done laughedelic/pisces;
set -g __done_min_cmd_duration 120000;

# Haskell related stuff
# cabal update
# cabal install hlint
# cabal install tasty-hunit
# cabal install sqlite-simple
# cabal install mysql-simple
# cabal install postgresql-simple

# Vim
# git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
# vim +PluginInstall +qall
# (cd ~/.vim/bundle/YouCompleteMe && ./install.py --clang-completer)

echo '-----------'
echo 'The end! >)'
echo '-----------'
