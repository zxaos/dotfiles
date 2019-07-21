# Lines configured by zsh-newuser-install
HISTFILE=${HISTFILE:=${XDG_DATA_HOME}/zsh/histfile}
HISTSIZE=1000
SAVEHIST=1000
setopt appendhistory nomatch
bindkey -v
# End of lines configured by zsh-newuser-install

# The following lines were added by compinstall
zstyle :compinstall filename "~/${ZDOTDIR}/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

plugins=(git vi-mode)
for file in ${ZDOTDIR}/autoload-settings/**/*(.)zsh; do
	echo "sourcing $file"
	source "$file"
done
