

if status --is-login
    set -x PYENV_ROOT "$HOME/.pyenv"
    set -x PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH
    set -x PYENV_SHELL fish
    status --is-interactive; and source (pyenv init -|psub)
    status --is-interactive; and source (pyenv virtualenv-init -|psub)
    pyenv rehash
end

test -e {$HOME}/.iterm2_shell_integration.fish ; and source {$HOME}/.iterm2_shell_integration.fish

status --is-interactive; and source (nodenv init -|psub)

source /usr/local/share/chruby/chruby.fish
source /usr/local/share/chruby/auto.fish

test -e /usr/local/bin/rg; and set -x FZF_DEFAULT_COMMAND 'rg --files'
