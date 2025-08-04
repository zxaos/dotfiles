# Load brew completions if present
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh/site-functions:$FPATH
fi

# The following lines were added by compinstall
zstyle :compinstall filename "~/${ZDOTDIR}/.zshrc"

autoload -Uz compinit
compinit
# End of lines added by compinstall

if type jj &>/dev/null; then
    source <(COMPLETE=zsh jj)
fi
