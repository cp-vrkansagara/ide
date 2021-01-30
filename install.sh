#!/usr/bin/env bash
set -e

CURRENT_DATE=$(date "+%Y%m%d%H%M%S")
# This directory name must not start with .vim
BACKUP_DIRECTORY_NAME="${HOME}/.old/vim-${CURRENT_DATE}"

if [ ! -d "$BACKUP_DIRECTORY_NAME" ]; then
  mkdir -p $BACKUP_DIRECTORY_NAME
fi

if [ $(ls $HOME/.vim* | wc -l) != 0 ]; then
  mv -f $HOME/.vim*  $BACKUP_DIRECTORY_NAME
fi

#Clone main repository
git clone --depth=1 https://github.com/amix/vimrc.git ~/.vim_runtime
sh ~/.vim_runtime/install_awesome_vimrc.sh
git clone --recursive --depth 1 --branch 2021  https://github.com/vrkansagara/ide.git /tmp/.vim
cd /tmp/.vim
git pull --recurse-submodules
mv /tmp/.vim $HOME

echo "Installed the Ultimate Vim configuration of [vrkansagara] successfully! Enjoy :-)"
# cp -f .vim/my_configs.vim  ~/.vim_runtime/



