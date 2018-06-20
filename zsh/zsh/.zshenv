export XDG_CONFIG_HOME=${XDG_CONFIG_HOME:=${HOME}/.config}
export XDG_DATA_HOME=${XDG_DATA_HOME:=${HOME}/.local/share}
export ZDOTDIR=${ZDOTDIR:=${XDG_CONFIG_HOME}/zsh}
if [[ -r $ZDOTDIR/.zshenv ]]; then
        source $ZDOTDIR/.zshenv
fi

export EDITOR=/usr/local/bin/nvim
export VISUAL=/usr/local/bin/nvim
