# This is the "real" zshenv, where things that aren't just setting up for XDG
# dirs should go.

if [[ $ZDOTDEBUG ]] then
  # This above line is for debugging if required, but if you leave it uncommented the
  # neovim python environment breaks
  echo "sourcing ${(%):-%N}"
fi

export EDITOR=nvim
if [ -d /Applications/VimR.app ]; then
  export VISUAL="/Applications/VimR.app/Contents/Resources/vimr --wait --nvim"
else
  export VISUAL="nvim"
fi
