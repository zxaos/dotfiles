if (( $+commands[elixir] )); then
  # Enable iex shell history
  export ERL_AFLAGS="-kernel shell_history enabled"
fi
