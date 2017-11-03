set PYENV_ROOT $HOME/.pyenv
set -x PATH $PYENV_ROOT/shims $PYENV_ROOT/bin $PATH
pyenv rehash

eval (python -m virtualfish compat_aliases  auto_activation)
