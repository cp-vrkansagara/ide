#!/usr/bin/env bash
set -e

CURRENT_DATE=$(date "+%Y%m%d%H%M%S")
cd $HOME/.vim
git add . 
git commit -am"Random commit at ${CURRENT_DATEA}"

git submodule update --init --recursive

echo "Update of .vim directory is done."
