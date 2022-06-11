#! /bin/bash

mkdir .config && mv nvim .config/
cp .config/.tmux.conf .

git clone --depth 1 https://github.com/wbthomason/packer.nvim\
 ~/.local/share/nvim/site/pack/packer/start/packer.nvim

nvim +PackerSync
