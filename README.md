This repo contains dotfiles and other bits of configurations.
Probably of limited utility to other people.

## Install Software
* Install xcode and homebrew
* `brew tap homebrew/bundle`
* `brew bundle`

## Set up shell
* add `/usr/local/bin/fish` to `/etc/shells`
* `chsh -s /usr/local/bin/fish`
* `ln -s fish.config ~/.config/fish/fish.config`
* `ln -s fishfile ~/.config/fish/fishfile`
* Install fisher plugins `fisher`
* Use modern fzf fish mappings: `set -xU FZF_LEGACY_KEYBINDINGS 0`
* If relevant, add iterm2 prompt to correct spot in fish prompt
  * e.g. `set prompt $prompt (iterm2_prompt_mark) "$color_symbol$pure_symbol_prompt$pure_color_normal "`
## Set up Vim
* get vim-plug https://github.com/junegunn/vim-plug
* symlink .vimrc into place
* run `:PlugInstall`

## Configure Git
* `git config --global core.excludesfile '~/path/to/dotfiles/gitignore_global'`
* `git config --global rebase.autosquash true`

## Manually install extras
* docker-compose completion - download from https://raw.githubusercontent.com/docker/compose/master/contrib/completion/fish/docker-compose.fish , place in /usr/local/share/fish/vendor_completions.d
