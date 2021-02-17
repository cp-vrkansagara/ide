#!/usr/bin/env bash
set -e

CURRENT_DATE=$(date "+%Y%m%d%H%M%S")
cd $HOME/.vim
git add . 
git commit -am"Random commit at ${CURRENT_DATE}"

git submodule update --init --recursive
git push
echo "Update of .vim directory is done."
