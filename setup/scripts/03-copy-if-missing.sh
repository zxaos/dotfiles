#!/usr/bin/env bash

# Add ssh config only if it doesn't already exist;
if [ ! -f ~/.ssh/config ]; then
    cp ~/.dotfiles/configs/ssh/config ~/.ssh/config
fi
