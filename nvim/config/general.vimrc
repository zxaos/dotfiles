" Allow setting window title
set title

" Enable "True Colour" support.
if (has("termguicolors"))
 set termguicolors
endif

" Set default color scheme
colorscheme OceanicNext
set background=dark

" Space instead of \ for leader
let mapleader = "\<Space>"

" Show commands in progress
set showcmd

" Show current mode
set showmode

" Refresh vimrc
nmap <Leader>rc :source $MYVIMRC<CR>

" Default edition options
set tabstop=2

" Show relative line numbers
set relativenumber
" except on the current line, show that as absolute (disabled for now because airline shows it)
" set number

" Use system clipboard
set clipboard=unnamed

" Persist undo between runs
set undofile

" More natural splits right/below instead of left/above
set splitbelow
set splitright
