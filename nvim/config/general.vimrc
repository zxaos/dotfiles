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

" Refresh vimrc
nmap <Leader>rc :source $MYVIMRC<CR>

" Default edition options
set tabstop=2

" Show relative line numbers
" disabled for now due to scrolling performance
"set relativenumber
set number

" Use system clipboard
set clipboard=unnamed

" Persist undo between runs
set undofile

" More natural splits right/below instead of left/above
set splitbelow
set splitright

" Update unmodified files when file on disk changes
set autoread

" Try to improve scrolling performance
set lazyredraw
