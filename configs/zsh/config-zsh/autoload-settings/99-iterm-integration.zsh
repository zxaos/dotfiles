# iterm2 integration _must_ be installed after starship sets the prompt or the prompt mark never appears.
# See https://github.com/starship/starship/issues/2206

if [ $TERM_PROGRAM == "iTerm.app" ]; then
  test -e $ZDOTDIR/iterm2_shell_integration.zsh && source $ZDOTDIR/iterm2_shell_integration.zsh || true
fi
