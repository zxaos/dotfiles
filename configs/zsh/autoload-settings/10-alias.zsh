alias exa=eza

# l as eza
l() {
  if [[ $1 == -* ]]; then # don't use default args if first arg starts with -
    eza "$@"
  else
    eza -l --icons "$@"
  fi
}

alias nvim=zed
