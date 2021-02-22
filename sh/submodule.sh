# git submodule update --init --recursive
# git submodule update --recursive
# git submodule foreach git pull origin master
# git submodule foreach git pull --rebase

echo "Change to .vim direcotry "

cd ~/.vim

git submodule add https://github.com/mileszs/ack.vim.git bundle/ack.vim
git submodule add https://github.com/ctrlpvim/ctrlp.vim.git bundle/ctrlp.vim
git submodule add https://github.com/vim-airline/vim-airline.git bundle/vim-airline
git submodule add https://github.com/vim-airline/vim-airline-themes.git bundle/vim-airline-theme
git submodule add https://github.com/altercation/vim-colors-solarized.git bundle/vim-colors-solarized
git submodule add https://github.com/gabrielelana/vim-markdown bundle/vim-markdown
git submodule add https://github.com/honza/vim-snippets.git bundle/vim-snippets
git submodule add https://github.com/gabrielelana/vim-markdown bundle/vim-markdown

git submodule add https://github.com/tpope/vim-pathogen bundle/vim-pathogen
git submodule add https://github.com/tpope/vim-pathogen.git bundle/vim-pathogen
git submodule add https://github.com/tpope/vim-fugitive.git bundle/fugitive
git submodule add https://github.com/tpope/vim-sensible.git bundle/vim-sensible
git submodule add https://github.com/tpope/vim-scriptease.git bundle/vim-scriptease
git submodule add https://github.com/tpope/vim-rhubarb.git bundle/vim-rhubarb
git submodule add  https://github.com/tpope/vim-commentary.git bundle/vim-commentry



git submodule add https://github.com/preservim/nerdtree.git bundle/nerdtree
git submodule add https://github.com/jlanzarotta/bufexplorer.git bundle/bufexplorer
git submodule add https://github.com/terryma/vim-multiple-cursors.git bundle/vim-multiple

git submodule add https://github.com/tomtom/tlib_vim.git bundle/tlib_vim
git submodule add https://github.com/MarcWeber/vim-addon-mw-utils.git bundle/vim-addon-mw-utils
git submodule add https://github.com/garbas/vim-snipmate.git bundle/vim-snipmate
