#!/usr/bin/env bash

set -e

CURRENT_DATE=$(date "+%Y%m%d%H%M%S")
PLUGINS_DIRECTORY="$HOME/.vim_runtime/my_plugins"
if [ ! -d "$PLUGINS_DIRECTORY/vim-rhubarb" ]; then
  git clone https://github.com/tpope/vim-rhubarb.git $HOME/.vim_runtime/my_plugins/vim-rhubarb
else
    cd ${PLUGINS_DIRECTORY}/vim-rhubarb

    git pull --rebase
fi

