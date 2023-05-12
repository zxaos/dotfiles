This repo contains dotfiles and other bits of configurations.
Probably of limited utility to other people.

## Install Software
* Install xcode and homebrew
  * xcode-select --install
* Install 1Password
* bootstrap zsh shell some homebrew works properly
* install rustup manually and rust (from https://rust-lang.github.io/rustup/installation/index.html)
* Fake a homebrew rust install by symlinking /usr/local/Cellar/rust/HEAD/bin to ~/.cargo/bin/
* Fake a homebrew elixir install by symlinking /usr/local/Cellar/elixir/HEAD/bin/elixir to ~/.asdf/shims/elixir and setting the asdf global elixir version appropriately
* ditto for erlang
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
```
git config --global core.excludesfile '~/.dotfiles/configs/git/gitignore_global'
git config --global rebase.autosquash true
git config --global user.name "Matt Bond"
git config --global user.email "matt+git@codefire.io"
git config --global pull.ff only
git config --global init.defaultBranch main
git config --global gpg.format ssh
git config --global commit.gpgsign true
git config --global gpg.ssh.program /Applications/1Password.app/Contents/MacOS/op-ssh-sign
git config --global user.signingkey "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIBg4ehIbBvgsmGle9R5xzAYNrAZlNhF2JUueIotwCgrJ"
```

## Manually install extras
rustup component add rust-src # for RLS / rust-analyzer
