#!/bin/bash

sudo snap install nvim --classic
sudo snap install clangd --classic
sudo apt update && sudo apt upgrade
sudo apt install luarocks
sudo apt install ripgrep
sudo apt install fd-find
sudo apt install npm
sudo apt install xclip

# font del nvim
mkdir -p ~/.local/share/fonts
wget https://github.com/ryanoasis/nerd-fonts/releases/download/v3.2.1/0xProto.zip
unzip 0xProto.zip -d 0xProto
cp 0xProto/*ttf ~/.local/share/fonts/
rm -r 0xProto 0xProto.zip
fc-cache -f -v ~/.local/share/fonts/

rm -rf ~/.config/nvim
ln -s $(pwd) ~/.config/nvim
