" Enable mouse support
if has("mouse")
 set mouse=a
endif

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
let g:airline_theme='one'

" Match the system theme if one is set
if has("macunix")
  if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    set background=dark
  else
    set background=light
  endif
else
  set background=light
endif

" set background has to be called after setting the colorscheme. Vim tries to 
" determine the best background when ctermbg for the Normal highlight is defined
" See https://github.com/rakr/vim-one/issues/21

" Toggle dark and light modes + schemes , or switch to a specific mode by argument.
function! DarkLight(...)
  if (&background == 'light')
    let l:toggle='dark'
  else
    let l:toggle='light'
  endif
  let l:targetmode=get(a:, 1, l:toggle)

  if l:targetmode=='dark'
    " Not setting a colour scheme currently because vim-one supports toggling
    " just background colour. But you could if using two different themes for
    " example.

    " colorscheme some-dark-theme
    set background=dark

  elseif l:targetmode=='light'
    "colorscheme some-light-theme
    set background=light
  endif
endfunction

:command! DarkLight call DarkLight()

" See also GUI-specific files:
" * vimr.vim
