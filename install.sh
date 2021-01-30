#!/usr/bin/env bash

set -e

CURRENT_DATE=$(date "+%Y%m%d%H%M%S")
# This directory name must not start with .vim
BACKUP_DIRECTORY_NAME="${HOME}/.old/vim-${CURRENT_DATE}"

echo "Creating backup directory."
if [ ! -d "$BACKUP_DIRECTORY_NAME" ]; then
  mkdir -p $BACKUP_DIRECTORY_NAME
fi

echo "Creating back of ~/.vim* to ${BACKUP_DIRECTORY_NAME}"
if [ $(ls $HOME/.vim* | wc -l) != 0 ]; then
  mv -f $HOME/.vim*  $BACKUP_DIRECTORY_NAME
fi

#Clone main repository
echo "Cloning the basic repository of [amix]"
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh

echo "Cloning the [vrkansagar] vim configuration."
git clone --recursive --branch master --depth 1 https://github.com/vrkansagara/ide.git /tmp/.vim-${CURRENT_DATE}
cd /tmp/.vim-${CURRENT_DATE}
git pull --recurse-submodules
mv /tmp/.vim-${CURRENT_DATE} $HOME/.vim
cp $HOME/.vim/vimrc.vim $HOME/.vimrc

# Before leaving the script reset to CWD
cd $HOME

echo "Installed the Ultimate Vim configuration of [vrkansagara] successfully! Enjoy :-)"
