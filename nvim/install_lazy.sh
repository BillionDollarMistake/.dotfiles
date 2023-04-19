#!/bin/bash
# install lazy.nvim plugin manager into vim.fn.stdpath("data")
lazypath="/home/$USER/.local/share/nvim/lazy/" 
mkdir -p $lazypath
cd $lazypath
git clone https://github.com/folke/lazy.nvim
cd --
sudo apt install universal-ctags -y
