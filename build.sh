#!/bin/sh

# git clone --depth=1 https://github.com/amix/vimrc.git -b vim ~/.vim
# sh ~/.vim/build.sh

# Rename .vim folder for backup
mv ~/.vim ~/vim_old
mv ~/.vimrc ~/.vimrc_old

cp vimrc ~/.vimrc
