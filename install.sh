#!/usr/bin/env bash
set -e

CURRENT_DATE=$(date "+%Y%m%d%H%M%S")

# This directory name must not start with .vim
BACKUP_DIRECTORY_NAME="${HOME}/.old/vim-${CURRENT_DATE}"

# check weather dependant binary is available with system or not like , vim,ctags and $HOME/bin directory @todo @fixme

echo "Creating backup directory."
if [ ! -d "$BACKUP_DIRECTORY_NAME" ]; then
  mkdir -p $BACKUP_DIRECTORY_NAME
fi

echo "Creating back of ~/.vim* to ${BACKUP_DIRECTORY_NAME}"
if [ $(ls $HOME/.vim* | wc -l) != 0 ]; then
  echo "Moving base vimrc config to back up folder"
  mv -f $HOME/.vim*  $BACKUP_DIRECTORY_NAME
fi

echo "Cloning the [vrkansagar] vim configuration."
git clone --recursive --branch 2021 --depth 1 https://github.com/vrkansagara/ide.git /tmp/.vim-${CURRENT_DATE}
cd /tmp/.vim-${CURRENT_DATE}
# git pull --recurse-submodules
git submodule update --init --recursive
mv /tmp/.vim-${CURRENT_DATE} $HOME/.vim

echo "Set up pathogen for vim run time path."
mkdir -p ~/.vim/autoload ~/.vim/bundle && \
curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim

# Copy of current vimrc to root direcory cause to update .vim folder with git tracking so create symbolink link
echo "Adding symbolink link for better git tracking of project"
ln -s $HOME/.vim/vimrc.vim $HOME/.vimrc

# Set sh directory executable
chmod -R +x $HOME/.vim/sh/*

# Before leaving the script reset to CWD
cd $HOME

echo "Installed the Ultimate Vim configuration of [vrkansagara] successfully! Enjoy :-)"