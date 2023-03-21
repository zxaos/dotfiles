* `brew bundle`
* ln -s ~/.dotfiles/zsh/zshenv ~/.zshenv
* mkdir -p ~/.config
* ln -s ~/.dotfiles/zsh/config-zsh ~/.config/zsh
* Add zsh to the allowed shells - sudo /etc/shells and add /usr/local/bin/zsh
* Open a zsh shell
* Ensure ZPLUG Home is set. It should probably be /opt/homebrew/opt/zplug since we're using homebrew zplug
* Install ZPlug `brew install zplug`
* chsh to change your default shell
