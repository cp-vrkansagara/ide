#!/bin/sh

# git clone --depth=1 https://github.com/vrkansagara/ide.git /tmp
# sh /tmp/ide/build.sh

# Rename .vim folder for backup
mv ~/.vim ~/vim_old
mv ~/.vimrc ~/.vimrc_old

cp -Rf /tmp/ide ~/
ln -s ~/vim/vimrc ~/.vimrc
