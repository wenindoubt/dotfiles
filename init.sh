#!/bin/bash

mkdir -p ~/.vim/{autoload,bundle,colors}

$(which cp) -R ~/dotfiles/vim/colors ~/.vim
$(which cp) -R ~/dotfiles/vim/.vimrc ~/.vim/vimrc

curl -LSso ~/.vim/autoload/pathogen.vim https://tpo.pe/pathogen.vim
git clone https://github.com/scrooloose/nerdtree.git ~/.vim/bundle/nerdtree
git clone https://github.com/scrooloose/syntastic.git ~/.vim/bundle/syntastic
git clone https://github.com/bling/vim-airline ~/.vim/bundle/vim-airline
git clone git://github.com/godlygeek/tabular.git ~/.vim/bundle/tabular
git clone git://github.com/vim-scripts/vimwiki.git ~/.vim/bundle/vimwiki

echo "runtime vimrc" > ~/.vimrc

$(which cp) -R ~/dotfiles/zsh/.zshrc ~/.zshrc
