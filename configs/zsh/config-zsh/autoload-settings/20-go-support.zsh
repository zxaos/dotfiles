if (( $+commands[go] )); then
  export GOPATH=~/.go
  export GOBIN=~/.go/bin
  path+=("$GOPATH/bin")
fi
