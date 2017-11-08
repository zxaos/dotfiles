" Minimal Configuration
set nocompatible
syntax on
filetype plugin indent on

" Allow setting window title
set title

" Enable "True Colour" support.
if (has("termguicolors"))
 set termguicolors
 " vim only sets the 24-bit color mode on terminals like xterm by default
 " set the escape sequence for additional $TERMs tmux-256color to enable
 " 24-bit color mode there too
 if &term==#'tmux-256color'
    set t_8f=[38;2;%lu;%lu;%lum
    set t_8b=[48;2;%lu;%lu;%lum
 endif
endif

" Appearance
" Requires italic support in terminfo!
let g:gruvbox_italic=1 
colorscheme gruvbox

" Space instead of \ for leader
let mapleader = "\<Space>"

" Default edition options
" set tabstop=2

" Show relative line numbers
" disabled for now due to scrolling performance
set relativenumber
set number

" Use system clipboard
" set clipboard=unnamed

" Persist undo between runs if the feature is supported.
" Save the undofiles somewhere less annoying than the current dir.
if exists("+undofile")
  if isdirectory($HOME . '/.vim/undo') == 0
    :silent !mkdir -p ~/.vim/undo > /dev/null 2>&1
  endif
  set undodir=~/.vim/undo//
  set undofile
endif

" Try to save swaps to somewhere less annoying than the current dir.
" But fall back to it if we have to
if isdirectory($HOME . '/.vim/swap') == 0
  :silent !mkdir -p ~/.vim/swap >/dev/null 2>&1
endif
set directory=/.vim/swap//
set directory+=~/tmp//
set directory+=.

" More natural splits right/below instead of left/above
set splitbelow
set splitright

" Better window shorcuts
nnoremap <C-J> <C-W><C-J>
nnoremap <C-K> <C-W><C-K>
nnoremap <C-L> <C-W><C-L>
nnoremap <C-H> <C-W><C-H>

" Set minimum split size and improv split handling
" set winminheight=5
" nnoremap <silent> + :exe "resize " . (winheight(0) * 3/2)<CR>
" nnoremap <silent> - :exe "resize " . (winheight(0) * 2/3)<CR>

" Update unmodified files when file on disk changes
" TODO: This is not sufficient for this behaviour, it doesn't pick
"       up most changes (e.g. terraform fmt)
set autoread

" Try to improve scrolling performance
" set lazyredraw
