# Minimal zshenv to redirect, prefer .config/zsh/.zshenv
# Uncomment to debug
# export ZDOTDEBUG=true

# Some terminals, like Warp, seem to suppress output from this file
if [[ $ZDOTDEBUG ]]; then
  echo "sourcing ${(%):-%N}"
fi

export ZDOTDIR=${ZDOTDIR:=${HOME}/.config/zsh}
if [[ -r $ZDOTDIR/.zshenv ]]; then
  source $ZDOTDIR/.zshenv
fi
