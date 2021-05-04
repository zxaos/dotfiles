#!/bin/bash

ln -s $(realpath --relative-to="$HOME/.config" ./configs/nvim-config/) ~/.config/nvim
ln -s $(realpath --relative-to="$HOME/.config" ./configs/nvim-env/) ~/.config/nvim-env
git clone https://github.com/k-takata/minpac.git ~/.config/nvim/pack/minpac/opt/minpac
echo "Start neovim and run :PackUpdate"
