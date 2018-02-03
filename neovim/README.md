brew bundle

ensure pyenv is correctly installed
pyenv install (cat .python-version)
pyenv virtualenv (cat .python-version) py3neovim
pyenv activate py3neovim
pip install -r requirements.txt
pyenv which python  # Note the path, ensure g:python_host_prog in vim config matches
