* `brew bundle`
* `stow -t ~ zsh`
* Open a zsh shell
* Ensure ZPLUG Home is set: `echo $ZPLUG_HOME` (.local/share/zsh) is a reasonable place for a data dir in line with XDG
* Install ZPlug `curl -sL --proto-redir -all,https https://raw.githubusercontent.com/zplug/installer/master/installer.zsh | zsh`
* Add zsh to the allowed shells - sudo /etc/shells and add /usr/local/bin/zsh
* chsh to change your default shell
