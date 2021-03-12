if [[ $TERM == 'xterm-kitty' ]]; then
  kitty + complete setup zsh | source /dev/stdin

  alias kitty-dark="kitty @ set-colors -a ~/.config/kitty/themes/AtomOneDark.conf"
  alias kitty-dark="kitty @ set-colors -a ~/.config/kitty/themes/AtomOneLight.conf"
  function kitty-theme() {
    theme=$(ls -q ~/.config/kitty/themes | fzf)
    kitty @ set-colors -a ~/.config/kitty/themes/${theme}
}

fi
