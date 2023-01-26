# This is the "real" zshenv, where things that aren't just setting up for XDG
# dirs should go.

if [[ $ZDOTDEBUG ]] then
  # This above line is for debugging if required, but if you leave it uncommented the
  # neovim python environment breaks
  echo "sourcing ${(%):-%N}"
fi

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

export EDITOR=nvim
if [ -d /Applications/VimR.app ]; then
  export VISUAL="/Applications/VimR.app/Contents/Resources/vimr --wait --nvim"
else
  export VISUAL="nvim"
fi
