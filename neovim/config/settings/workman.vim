" Rebind the right hand home row to workman keys and shuffle the oter commands
" that are displaced. See links for the original remapings.
" * https://axiomatic.neophilus.net/posts/2013-08-13-workman-layout-for-vim.html
" * https://github.com/kennykaye/dotfiles/blob/master/vim/settings/keyboard-layouts.vim

"(O)pen line -> (L)ine
noremap l o
noremap o l
noremap L O
noremap O L
"Search (N)ext -> (J)ump
noremap j n
noremap n j
noremap J N
noremap N J
"(E)nd of word -> brea(K) of word
noremap k e
noremap e k
noremap K E
noremap E <nop>
noremap h y
"(Y)ank -> (H)aul
noremap y h
noremap H Y
noremap Y H
