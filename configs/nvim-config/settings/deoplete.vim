" enable deoplete at startup and make sure the autocompletion will actually trigger using the omnifuncs set later on.
let g:deoplete#enable_at_startup = 1
"if !exists('g:deoplete#omni#input_patterns')
  "let g:deoplete#omni#input_patterns = {}
"endif
" let g:deoplete#disable_auto_complete = 1

" automatically close the scratch window at the top of the vim window on finishing a complete or leaving insert
autocmd InsertLeave,CompleteDone * if pumvisible() == 0 | pclose | endif
