# This is the "real" zshenv, where things that aren't just setting up for XDG
# dirs should go.

if [[ $ZDOTDEBUG ]] then
	# This above line is for debugging if required, but if you leave it uncommented the
	# neovim python environment breaks
	echo "sourcing ${(%):-%N}"
fi

export EDITOR=/usr/local/bin/nvim
export VISUAL=/usr/local/bin/nvim
