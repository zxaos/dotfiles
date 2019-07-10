#!/bin/bash

ln -s $(realpath --relative-to="$HOME/.config" ./nvim-config/) ~/.config/nvim
git clone https://github.com/k-takata/minpac.git ~/.config/nvim/pack/minpac/opt/minpac
echo "Start neovim and run :PackUpdate"
