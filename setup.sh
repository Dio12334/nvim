#!/bin/bash

snap install neovim --classic
snap install clangd --classic
apt install luarocks
apt install ripgrep
apt install fd-find
apt install npm

rm -rf ~/.config/nvim
ln -s $(pwd) ~/.config/nvim
