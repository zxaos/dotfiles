#!/usr/bin/env bash
dirs=()
symlinks=()

# zed editor
dirs+=(".config/zed")
symlinks+=("../../.dotfiles/configs/zed/settings.json .config/zed/settings.json")
symlinks+=("../../.dotfiles/configs/zed/keymap.json .config/zed/keymap.json")

# zsh
dirs+=(".config/zsh" ".local/share")
symlinks+=(".dotfiles/configs/zsh/home/.zshenv .zshenv")
symlinks+=("../../.dotfiles/configs/zsh/home/.zshenv .config/zsh/.zshenv")
symlinks+=("../../.dotfiles/configs/zsh/home/.config/zsh/.zshrc .config/zsh/.zshrc")
symlinks+=("../../.dotfiles/configs/zsh/home/.config/zsh/.zprofile .config/zsh/.zprofile")

# Run
cd ~
for d in "${dirs[@]}"; do
    mkdir -p $d
done

for s in "${symlinks[@]}"; do
    if [ ! -e "${s#* }" ]; then
        echo "Symlink ${s#* } does not exist, creating..."
        ln -ws $s
    fi
done
