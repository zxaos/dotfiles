if [[ $ZDOTDEBUG ]]; then
  echo "sourcing ${(%):-%N}"
fi

# Load paths
# This is earlier than normal zshrc / autoload so that it fires for noninteractive terminals too
# It's outside of zshenv to work around macos's path_helper in /etc/zprofile

## homebrew
if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -f /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
else
  echo "WARNING: no homebrew paths added!"
fi

## asdf
if [ -f /opt/homebrew/opt/asdf/libexec/asdf.sh ]; then
    source /opt/homebrew/opt/asdf/libexec/asdf.sh
elif [ -f /usr/local/opt/asdf/libexec/asdf.sh ]; then
    source /usr/local/opt/asdf/libexec/asdf.sh
fi
