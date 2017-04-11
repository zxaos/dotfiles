# General Setup Steps
* Symlink the nvim directory to ~/.config/nvim/
* Install [vim-plug](https://github.com/junegunn/vim-plug)
* In nvim, run `:CheckHealth` and make sure everything's ok
* In nvim run `:PlugInstall` to get plugins

# Plugin-Specific setup
## Neomake
* javascript linting requires eslint
  * The binary path might need to be updated to reflect nodenv
## deoplete
* deplolete-ternjs needs tern globally installed
  * The binary path might need to be updated to reflect nodenv

