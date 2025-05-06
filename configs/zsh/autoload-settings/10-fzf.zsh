# Set up fzf key bindings and fuzzy completion
# See https://github.com/junegunn/fzf?tab=readme-ov-file#key-bindings-for-command-line
if type fzf &>/dev/null; then
    source <(fzf --zsh)
fi
