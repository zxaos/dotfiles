brew install zlib
brew install readline
brew install openssl
brew install sqlite

export LDFLAGS="-L/usr/local/opt/sqlite/lib -L/usr/local/opt/zlib/lib"
export CPPFLAGS="-I/usr/local/opt/sqlite/include -I/usr/local/opt/zlib/include"
asdf plugin-add python
asdf install python 3.7.2

python -m venv venv3
source venv/bin/activate
pip install -r requirements.txt
