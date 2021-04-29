if (( $+commands[go] )); then
  export GOPATH=~/.go
  path+=("$GOPATH/bin")
fi
