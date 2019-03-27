#!/usr/bin/env sh

# Check .vim folder
if [ ! -d "~/.vim" ];then
    mkdir ~/.vim
fi

# Copy color scheme and vimrc
cp -r after ~/.vim/
cp -r colors ~/.vim/
cp vimrc_cluster ~/.vimrc

# Clone Vundle for vim
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Install Plugins
vim +PluginInstall +qall

# Install oh-my-zsh

echo "Done!"
