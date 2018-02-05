brew bundle

ensure pyenv is correctly installed
pyenv install (cat .python-version)
pyenv virtualenv (cat .python-version) py3neovim
pyenv activate py3neovim
pip install -r requirements.txt
pyenv which python  # Note the path, ensure g:python_host_prog in vim config matches

chruby install (cat .ruby-version)
chruby (cat ruby version)
bundle install

nodenv install (cat .node-version)
nodenv global (cat .node-version)
npm install -g neovim
nodenv rehash

// Yes, really. The node provider doesn't currently have a way to override the path in the same way as the other providers

git clone https://github.com/k-takata/minpac.git ~/.config/nvim/pack/minpac/opt/minpac
// minpac manages itself, but this is required to bootstrap it for first load
