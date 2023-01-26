# If we're building erlang ourselves (asdf) build docs too so elixir can pick them up
export KERL_BUILD_DOCS=yes

if (( $+commands[elixir] )); then
  # Enable iex shell history
  export ERL_AFLAGS="-kernel shell_history enabled"
fi
