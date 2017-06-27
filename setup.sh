#!/usr/bin/env bash
# Half script; half checklist of how to customize a new Ubuntu system with vim, tmux, and pyenv
# Maybe someday it'll be all automatic!

sudo apt-get update
sudo apt-get upgrade
sudo apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev \
libreadline-dev libsqlite3-dev wget curl llvm libncurses5-dev libncursesw5-dev \
xz-utils tk-dev ack-grep git python-pip tmux vim

# Generate an SSH key and register it with github
ssh-keygen # and press enter twice to generate key

echo 'Enter github password:'
curl -X POST -u katlings -d '{"title":"`echo $HOSTNAME`","key":"'"$(cat $HOME/.ssh/id_rsa.pub)"'"}' https://api.github.com/user/keys

# dotfiles
git clone git@github.com:katlings/dotfiles.git # then type yes and press enter to connect
cp dotfiles/.* $HOME # TODO: symlinks
source $HOME/.bashrc

# Vim plugins
git clone git@github.com:VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
vim +PluginInstall +qall # and quit when it finishes running, if necessary

# Pyenv
git clone https://github.com/pyenv/pyenv.git ~/.pyenv
rebash
pyenv install 2.7
pyenv install 3.5.3
git clone https://github.com/pyenv/pyenv-virtualenv.git $(pyenv root)/plugins/pyenv-virtualenv
rebash
