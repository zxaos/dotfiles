#!/bin/bash

ln -s $(realpath --relative-to="$HOME/.config/" ../configs/iterm2/) ~/.config/iterm2

echo "Please start iterm2 and initialize the python scripting environment"
read -n 1 -p "Press any key to continue"

echo "Manually adjust iterm to read preferences from /Users/zxaos/.config/iterm2
read -n 1 -p "Press any key to continue"

mkdir -p ../configs/iterm2/AppSupport/Scripts/AutoLaunch
ln -s "$HOME/.dotfiles/configs/iterm2/scripts/light-dark.py" ../configs/iterm2/AppSupport/Scripts/AutoLaunch/light-dark.py

echo "Please install iterm2 utilities to ../configs/zsh/config-zsh/.iterm2."
echo "(The install iterm itegration menu item should be able to do this)"

