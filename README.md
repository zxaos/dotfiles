This repo contains dotfiles and other bits of configurations.
Probably of limited utility to other people.

## Install Software
* Install xcode and homebrew
* `brew tap homebrew/bundle`
* `brew bundle`

## Set up shell
* `cd zsh`
* `brew bundle`
* `stow -t ~ zsh`
* add `/usr/local/bin/zsh` to `/etc/shells`
* `chsh -s /usr/local/bin/zsh`

## Set up Neovim
* `cd neovim`
* When setting up the node globals for this env, prepend with ASDF_SKIP_RESHIM=1 to speed it up

## Configure Git
* `git config --global core.excludesfile '~/path/to/dotfiles/gitignore_global'`
* `git config --global rebase.autosquash true`
* `git config --global user.name "Matt Bond"`
* `git config --global user.email "matt+git@codefire.io"`

## Manually install extras
