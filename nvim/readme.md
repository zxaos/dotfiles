# General Setup Steps
* Symlink the nvim directory to ~/.config/nvim/
* Install dein: https://github.com/Shougo/dein.vim
  * The install directory is given in the init.vimrc with the other dein setup code
* In nvim, run :CheckHealth and make sure everything's ok
* In nvim run :call dein#install()

# Plugin-Specific setup
## Neomake
* javascript linting requires eslint
  * The binary path might need to be updated to reflect nodenv
## deoplete
* deplolete-ternjs needs tern globally installed
  * The binary path might need to be updated to reflect nodenv

