set PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH
pyenv rehash

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

status --is-interactive; and source (nodenv init -|psub)

source /usr/local/share/chruby/chruby.fish

source /usr/local/share/chruby/auto.fish
