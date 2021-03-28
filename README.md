This repo contains dotfiles and other bits of configurations.
Probably of limited utility to other people.

## Install Software
* Install xcode and homebrew
* install rustup manually and rust (from https://rust-lang.github.io/rustup/installation/index.html)
* Fake a homebrew rust install by symlinking /usr/local/Cellar/rust/HEAD to ~/.cargo/bin/
* `brew tap homebrew/bundle`
* `brew bundle`
  * make sure rustup is installed first so that rust-analyzer (includer in the Brewfile) can be installed
  * This is also required so that rust dependencies in other bundle files (eg bat in zsh) use the rustup compiler instead of the homebrew rust one

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
* `git config --global pull.ff only`
* `git config --global init.defaultBranch main`

## Manually install extras
rustup component add rust-src # for RLS / rust-analyzer
