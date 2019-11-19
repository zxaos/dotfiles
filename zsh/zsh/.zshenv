# This zshenv is entirely for setting up XDG-compatible locations for the
# remaining zsh files. No other content should be put here. Lines which would
# normally go in ~/.zshenv should instead go in $ZDOTDIR/.zshenv.
echo "sourcing ${(%):-%N}"
export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:=${HOME}/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:=${HOME}/.local/share}
export ZDOTDIR=${ZDOTDIR:=${XDG_CONFIG_HOME}/zsh}
if [[ -r $ZDOTDIR/.zshenv ]]; then
        source $ZDOTDIR/.zshenv
fi
