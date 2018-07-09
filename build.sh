#!/bin/sh
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
touch ~/.vim_runtime/my_configs.vim
cp -f .vim/my_configs.vim  ~/.vim_runtime/
