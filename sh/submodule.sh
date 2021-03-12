# git submodule update --init --recursive
# git submodule update --recursive
# git submodule foreach git pull origin master
# git submodule foreach git pull --rebase

echo "Change to .vim direcotry "

cd ~/.vim

git clone https://github.com/mileszs/ack.vim.git DATA/bundle/ack.vim
git clone https://github.com/ctrlpvim/ctrlp.vim.git DATA/bundle/ctrlp.vim
git clone https://github.com/vim-airline/vim-airline.git DATA/bundle/vim-airline
git clone https://github.com/vim-airline/vim-airline-themes.git DATA/bundle/vim-airline-theme
git clone https://github.com/altercation/vim-colors-solarized.git DATA/bundle/vim-colors-solarized
git clone https://github.com/gabrielelana/vim-markdown DATA/bundle/vim-markdown
git clone https://github.com/honza/vim-snippets.git DATA/bundle/vim-snippets
git clone https://github.com/gabrielelana/vim-markdown DATA/bundle/vim-markdown

git clone https://github.com/tpope/vim-pathogen DATA/bundle/vim-pathogen
git clone https://github.com/tpope/vim-pathogen.git DATA/bundle/vim-pathogen
git clone https://github.com/tpope/vim-fugitive.git DATA/bundle/fugitive
git clone https://github.com/tpope/vim-sensible.git DATA/bundle/vim-sensible
git clone https://github.com/tpope/vim-scriptease.git DATA/bundle/vim-scriptease
git clone https://github.com/tpope/vim-rhubarb.git DATA/bundle/vim-rhubarb
git clone  https://github.com/tpope/vim-commentary.git DATA/bundle/vim-commentry



git clone https://github.com/preservim/nerdtree.git DATA/bundle/nerdtree
git clone https://github.com/jlanzarotta/bufexplorer.git DATA/bundle/bufexplorer
git clone https://github.com/terryma/vim-multiple-cursors.git DATA/bundle/vim-multiple

git clone https://github.com/tomtom/tlib_vim.git DATA/bundle/tlib_vim
git clone https://github.com/MarcWeber/vim-addon-mw-utils.git DATA/bundle/vim-addon-mw-utils
git clone https://github.com/garbas/vim-snipmate.git DATA/bundle/vim-snipmate



git clone https://github.com/ycm-core/YouCompleteMe.git  DATA/bundle/YouCompleteMe.git
git clone https://github.com/vim-syntastic/syntastic.git DATA/bundle/syntastic.git
git clone https://github.com/ycm-core/lsp-examples DATA/bundle/lsp-examples.git

git clone https://github.com/junegunn/goyo.vim DATA/bundle/goyo.vim
git clone https://github.com/amix/vim-zenroom2 DATA/bundle/vim-zenroom2

echo "Bellow line is necessary because it check with recursive dependence"
# git submodule update --init --recursive

