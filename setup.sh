#!/bin/bash

sudo snap install nvim --classic
sudo snap install clangd --classic
sudo apt install luarocks
sudo apt install ripgrep
sudo apt install fd-find
sudo apt install npm

rm -rf ~/.config/nvim
ln -s $(pwd) ~/.config/nvim
