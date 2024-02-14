This repo contains dotfiles and other bits of configurations.
Probably of limited utility to other people.

## Fresh Machine Setup
* Install xcode and homebrew
  * xcode-select --install
* Install 1Password
* `cd setup; ./run-all-scripts.sh`
  * This will need to be done multiple times as some scripts require restarting the process

## Old Notes that might still be useful
* Fake a homebrew elixir install by symlinking /usr/local/Cellar/elixir/HEAD/bin/elixir to ~/.asdf/shims/elixir and setting the asdf global elixir version appropriately
* ditto for erlang

### Set up Neovim
* When setting up the node globals for this env, prepend with ASDF_SKIP_RESHIM=1 to speed it up
