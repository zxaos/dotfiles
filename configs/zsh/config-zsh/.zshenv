# This is the "real" zshenv, where things that aren't just setting up for XDG
# dirs should go.

if [[ $ZDOTDEBUG ]] then
  # This above line is for debugging if required, but if you leave it uncommented the
  # neovim python environment breaks
  echo "sourcing ${(%):-%N}"
fi

# We don't have homebrew in the PATH yet to know which is correct
if [ -f /usr/local/bin/nvim ]; then
  export EDITOR=/usr/local/bin/nvim
  export VISUAL=/usr/local/bin/nvim
elif [ -f /opt/homebrew/bin/nvim ]; then
  export EDITOR=/opt/homebrew/bin/nvim
  export VISUAL=/opt/homebrew/bin/nvim
fi
