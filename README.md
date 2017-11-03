This repo contains dotfiles and other bits of configurations.
Probably of limited utility to other people.

## Install Software
* Install xcode and homebrew
* `brew tap homebrew/bundle`
* `brew bundle`

## Set up shell
* add `/usr/local/bin/fish` to `/etc/shells`
* `chsh -s /usr/local/bin/fish`
* Add fzf support - `/usr/local/opt/fzf/install`

## Set up Vim
* get vim-plug https://github.com/junegunn/vim-plug
* symlink .vimrc into place
* run `:PlugInstall`

## Configure Git
* `git config --global core.excludesfile '~/path/to/dotfiles/gitignore_global'`
* `git config --global rebase.autosquash true`
