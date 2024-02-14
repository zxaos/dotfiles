#!/usr/bin/env bash

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
git config --global alias.fpush push --force-with-lease

gh config set git_protocol ssh
