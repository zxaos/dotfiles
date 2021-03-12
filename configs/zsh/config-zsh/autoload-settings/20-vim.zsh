# Allow deleting anything in append mode
bindkey -v '^?' backward-delete-char

# Re-add reverse search
bindkey -v "^R" history-incremental-search-backward
