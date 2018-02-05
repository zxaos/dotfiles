" Enable "True Colour" support.
if (has("termguicolors"))
 set termguicolors
 " vim only sets the 24-bit color mode on terminals like xterm by default
 " set the escape sequence for additional $TERMs tmux-256color to enable
 " 24-bit color mode there too
 if &term==#'tmux-256color' || $TERM==#'tmux-256color'
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
 endif
 if &term==#'xterm-256color-italic' || $TERM==#'xterm-256color-italic'
    let g:deus_italic=1
 endif
endif

set background=dark " Setting dark mode
colorscheme deus
let g:deus_termcolors=256

" See also GUI-specific files:
" * vimr.vim
