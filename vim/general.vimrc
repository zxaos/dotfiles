" Allow setting window title
set title

" Enable "True Colour" support.
if (has("termguicolors"))
 set termguicolors
endif

" Set default color scheme
" colorscheme OceanicNext
" colorscheme base16-default-dark
" set background=dark

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

" Persist undo between runs
set undofile

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
set autoread

" Try to improve scrolling performance
" set lazyredraw
