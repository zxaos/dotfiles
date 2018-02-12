" Fuzzy Finder: https://github.com/junegunn/fzf

" fzf is installed with brew. Load the vim plugin bundled with the binary
set rtp+=/usr/local/opt/fzf

" bind to Ctrl-P
nnoremap <C-p> :<C-u>FZF<CR>

" see also rebinds in workman.vim
