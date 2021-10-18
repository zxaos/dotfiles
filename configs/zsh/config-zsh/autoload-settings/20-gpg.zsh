if (( $+commands[gpg] )); then
  # Identify TTY
  export GPG_TTY=$(tty)
  # configure gui pinentry so it's available, but use terminal if already in one
  export PINENTRY_USER_DATA="USE_CURSES=1"
fi
