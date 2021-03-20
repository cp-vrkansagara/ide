#!/usr/bin/env bash
set -e

if [ "$(whoami)" != "root" ]; then
	SUDO=sudo
fi

CURRENT_DATE=$(date "+%Y%m%d%H%M%S")
export DEBIAN_FRONTEND=noninteractive

# git submodule update --init --recursive
# git submodule update --recursive
# git submodule foreach git pull origin master
# git submodule foreach git pull --rebase

echo "Change to .vim direcotry "

cd ~/.vim

${SUDO} rm -rf bundle/* -Rf
${SUDO} rm -rf .git/modules/* -Rf

git submodule add -f https://github.com/tpope/vim-pathogen.git bundle/vim-pathogen
git submodule add -f https://github.com/tpope/vim-fugitive.git bundle/fugitive
git submodule add -f https://github.com/tpope/vim-sensible.git bundle/vim-sensible
git submodule add -f https://github.com/tpope/vim-scriptease.git bundle/vim-scriptease
git submodule add -f https://github.com/tpope/vim-rhubarb.git bundle/vim-rhubarb
git submodule add -f  https://github.com/tpope/vim-commentary.git bundle/vim-commentry

git submodule add -f https://github.com/NLKNguyen/papercolor-theme.git bundle/papercolor-theme
git submodule add -f https://github.com/vim-airline/vim-airline.git bundle/vim-airline
git submodule add -f https://github.com/vim-airline/vim-airline-themes.git bundle/vim-airline-theme
git submodule add -f https://github.com/preservim/nerdtree.git bundle/nerdtree
git submodule add -f https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
git submodule add -f https://github.com/mileszs/ack.vim.git bundle/ack.vim
git submodule add -f https://github.com/jlanzarotta/bufexplorer.git bundle/bufexplorer
git submodule add -f https://github.com/airblade/vim-gitgutter.git bundle/vim-gitgutter
git submodule add -f https://github.com/neoclide/coc.nvim.git bundle/coc.nvim
# git submodule add -f https://github.com/junegunn/goyo.vim bundle/goyo.vim
# git submodule add -f https://github.com/amix/vim-zenroom2 bundle/vim-zenroom2

#vim-snipmate @START
# git submodule add -f https://github.com/garbas/vim-snipmate.git bundle/vim-snipmate
# git submodule add -f https://github.com/tomtom/tlib_vim.git bundle/tlib_vim
# git submodule add -f https://github.com/MarcWeber/vim-addon-mw-utils.git bundle/vim-addon-mw-utils
# git submodule add -f https://github.com/honza/vim-snippets.git bundle/vim-snippets
#vim-snipmate @END

git submodule add -f https://github.com/gabrielelana/vim-markdown.git bundle/vim-markdown
# git submodule add -f https://github.com/preservim/tagbar.git bundle/tagbar

# git submodule add -f https://github.com/terryma/vim-multiple-cursors.git bundle/vim-multiple

git submodule update --init --recursive
echo "Submodule installation recursive dependence [DONE]."
