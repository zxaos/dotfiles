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

" Refresh vimrc
nmap <Leader>rc :source $MYVIMRC<CR>
