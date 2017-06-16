
#### Install antibody
http://getantibody.github.io

```
brew tap getantibody/homebrew-antibody
brew install antibody
ln -s ~/dotfiles/zsh/zsh-antibody-plugins ~/.zsh-antibody-plugins
antibody
```

To suppress last login message, `touch ~/.hushlogin`

Install additional completions by adding them to ~/.zsh/completion.
e.g.
```
ln -s /Applications/Docker.app/Contents/Resources/etc/docker.zsh-completion ~/.zsh/completion/_docker
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-compose.zsh-completion ~/.zsh/completion/_docker-compose
ln -s /Applications/Docker.app/Contents/Resources/etc/docker-machine.zsh-completion ~/.zsh/completion/_docker-machine
compinit -u
```
