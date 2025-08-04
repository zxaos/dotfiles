#!/usr/bin/env bash
dirs=(".config .cache .local/share .local/state .ssh/sock")
symlinks=()

# jj
dirs+=(".config/git .config/jj")
symlinks+=("../../.dotfiles/configs/jj/config.toml .config/jj/config.toml")
## jj doesn't have a flag we can configure for global ignores
## but it does read config/git for a global gitignore
symlinks+=("../../.dotfiles/configs/git/gitignore_global .config/git/ignore")

# ghostty
dirs+=(".config/ghostty")
symlinks+=("../../.dotfiles/configs/ghostty/config .config/ghostty/config")

# starship
# NB This should only have one .. because it's relative to the .config path and there's no starship subdir
symlinks+=("../.dotfiles/configs/starship/starship.toml .config/starship.toml")

# zed editor
dirs+=(".config/zed")
symlinks+=("../../.dotfiles/configs/zed/settings.json .config/zed/settings.json")
symlinks+=("../../.dotfiles/configs/zed/keymap.json .config/zed/keymap.json")

# zsh
dirs+=(".config/zsh" ".local/share")
symlinks+=(".dotfiles/configs/zsh/home/.zshenv .zshenv")
symlinks+=("../../.dotfiles/configs/zsh/home/.config/zsh/.zshenv .config/zsh/.zshenv")
symlinks+=("../../.dotfiles/configs/zsh/home/.config/zsh/.zshrc .config/zsh/.zshrc")
symlinks+=("../../.dotfiles/configs/zsh/home/.config/zsh/.zprofile .config/zsh/.zprofile")

# Run
cd ~
for d in "${dirs[@]}"; do
    mkdir -p $d
done

did_symlink=0
for s in "${symlinks[@]}"; do
    if [ ! -e "${s#* }" ]; then
        echo "Symlink ${s#* } does not exist, creating..."
        ln -ws $s
        did_symlink=1
    fi
done

if [ $did_symlink -eq 1 ]; then
    echo "Symlinks created. Paths may have changed, please restart shell and re-run setup."
    exit 1
fi
