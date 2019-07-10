" Enable "True Colour" support.
if has("termguicolors")
 set termguicolors
 " vim only sets the 24-bit color mode on terminals like xterm by default
 " set the escape sequence for additional $TERMs tmux-256color to enable
 " 24-bit color mode there too
 if &term==#'tmux-256color' || $TERM==#'tmux-256color'
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
 endif
endif

let g:one_allow_italics=1
colorscheme one
set background=light " set background has to be called after setting the colorscheme.
                     " Vim tries to determine the best background when ctermbg for the Normal highlight is defined.
let g:airline_theme='one'

if has("mouse")
 set mouse=a
endif

" See also GUI-specific files:
" * vimr.vim
