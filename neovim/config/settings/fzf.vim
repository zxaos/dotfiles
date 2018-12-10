" Fuzzy Finder: https://github.com/junegunn/fzf

" fzf is installed with brew. Load the vim plugin bundled with the binary
set rtp+=/usr/local/opt/fzf

" bind to Ctrl-P. Clear any ranges, then:
" use GitFiles if git says we're in a repo
" if not in a repo, just search all files
" 
" This has the net effect of honouring .gitignore without having to pipe
" another command like ag or rg into fzf first.
nnoremap <C-p> :<C-u>execute system('git rev-parse --is-inside-work-tree') =~ 'true' ? 'GFiles' : 'Files'<CR>

" see also keyboard-mode-aware options in after/keyboard.vim
