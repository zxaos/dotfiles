# nvim environment setup

brew install asdf
asdf plugin-add python
asdf install
asdf reshim
pip install pipenv
pipenv install

brew bundle
bash ~/.asdf/plugins/nodejs/bin/import-release-team-keyring
npm install

with asdf, the version of node used here _must_ be the same as the global node version or else detection will fail

git clone https://github.com/k-takata/minpac.git ~/.config/nvim/pack/minpac/opt/minpac
// minpac manages itself, but this is required to bootstrap it for first load
