# Warp has its own vim mode so disable zsh's
if [[ $TERM_PROGRAM != "WarpTerminal" ]]; then
    # Use vi mode
    bindkey -v

    # Allow deleting anything in append mode
    bindkey -v '^?' backward-delete-char

    # Re-add reverse search
    bindkey -v "^R" history-incremental-search-backward
fi
