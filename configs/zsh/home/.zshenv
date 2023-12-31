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

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_STATE_HOME="$HOME/.local/state"
