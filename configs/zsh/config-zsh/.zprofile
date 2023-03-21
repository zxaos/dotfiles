# Debug: This based on https://apple.stackexchange.com/questions/432226/homebrew-path-set-in-zshenv-is-overridden this will work?
# Does it break vimr?

# Load homebrew paths
# This seems early, but it fixes things like VimR which only source zshenv and
# not zshrc and other interactive terminal settings.
# It also simplifies the visual and editor settings below since nvim will be
# on the path
if [ -f /opt/homebrew/bin/brew ]; then
  eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -f /usr/local/bin/brew ]; then
  eval "$(/usr/local/bin/brew shellenv)"
else
  echo "WARNING: no homebrew paths added!"
fi

source "${HOMEBREW_PREFIX}/opt/asdf/libexec/asdf.sh"


