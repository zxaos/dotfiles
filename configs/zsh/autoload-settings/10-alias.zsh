alias cat=bat
alias dig="echo 'probably use doggo instead unless you're scripting?'"
alias exa=eza
alias neovim=$(which nvim)
alias tf=terraform

# l as eza
l() {
  if [[ $1 == -* ]]; then # don't use default args if first arg starts with -
    eza "$@"
  else
    eza -l --icons --git --smart-group "$@"
  fi
}
