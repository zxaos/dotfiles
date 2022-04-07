# Suppress starting junk %
if [[ $ZDOTDEBUG ]] then
	echo "sourcing ${(%):-%N}"
fi
# Lines configured by zsh-newuser-install
HISTFILE=${HISTFILE:=${XDG_DATA_HOME}/zsh/histfile}
HISTSIZE=1000
SAVEHIST=1000
setopt nomatch inc_append_history_time
bindkey -v
# End of lines configured by zsh-newuser-install


# Load homebrew paths
if [ -f /opt/homebrew/bin/brew ]; then
	eval "$(/opt/homebrew/bin/brew shellenv)"
elif [ -f /usr/local/bin/brew ]; then
	eval "$(/usr/local/bin/brew shellenv)"
else
	echo "WARNING: no homebrew paths added!"
fi

# Load brew completions if present
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# The following lines were added by compinstall
zstyle :compinstall filename "~/${ZDOTDIR}/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

plugins=(git vi-mode)
for file in ${ZDOTDIR}/autoload-settings/**/*(.)zsh; do
	if [[ $ZDOTDEBUG ]] then
		echo "sourcing $file"
	fi
	source "$file"
done

[ -f "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh ] && source "${XDG_CONFIG_HOME:-$HOME/.config}"/fzf/fzf.zsh

test -e "${ZDOTDIR}/.iterm2_shell_integration.zsh" && source "${ZDOTDIR}/.iterm2_shell_integration.zsh"

