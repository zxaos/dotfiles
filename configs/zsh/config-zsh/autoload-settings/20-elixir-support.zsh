# If we're building erlang ourselves (asdf) build docs too so elixir can pick them up
export KERL_BUILD_DOCS=yes

# From Fly
# --without-wx excludes wxWidgets which was broken in OTP-24
# --without-javac
export KERL_CONFIGURE_OPTIONS="--without-javac"

if (( $+commands[elixir] )); then
  # Enable iex shell history
  export ERL_AFLAGS="-kernel shell_history enabled"
fi
