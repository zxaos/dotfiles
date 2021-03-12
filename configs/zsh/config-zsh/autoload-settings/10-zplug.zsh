export ZPLUG_HOME=${ZPLUG_HOME:=${XDG_DATA_HOME}/zsh/zplug}
export ZPLUG_LOADFILE=${ZPLUG_LOADFILE:=${ZDOTDIR}/zplug-packages.zsh}

if [[ -r ${ZPLUG_HOME}/init.zsh ]]; then
	source ${ZPLUG_HOME}/init.zsh

	# Plugins - See packages.zsh

	# Install plugins if there are plugins that have not been installed
	if ! zplug check --verbose; then
		printf "Install? [y/N]: "
		if read -q; then
			echo; zplug install
		fi
	fi

	# Then, source plugins and add commands to $PATH
	zplug load --verbose
fi

# vim: set syntax=zsh :
