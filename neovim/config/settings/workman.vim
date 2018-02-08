" Workman replaces HJKL ln the right hand with YNEO.
" To make the keys in that hand position continue to work, we need to shuffle
" around the functions of the keys that are being replaced.

" Rebind the right hand home row to workman keys and shuffle the other commands
" that are displaced. See links for the original remapings.
" * https://axiomatic.neophilus.net/posts/2013-08-13-workman-layout-for-vim.html
" * https://github.com/kennykaye/dotfiles/blob/master/vim/settings/keyboard-layouts.vim

function! SwitchToLayout(type)
  if a:type == "workman"
    "(O)pen line -> (L)ine
    noremap l o
    noremap o l
    noremap L O
    noremap O L
    "Search (N)ext -> (J)ump / (J)oin -> Joi(n)
    noremap j n
    noremap n j
    noremap J N
    noremap N J
    "(E)nd of word -> brea(K) of word
    noremap k e
    noremap e k
    noremap K E
    noremap E <nop>
    "(Y)ank -> (H)aul
    noremap h y
    noremap y h
    noremap H Y
    noremap Y H

  else " QWERTY
    silent! unmap l
    silent! unmap o
    silent! unmap L
    silent! unmap O
    silent! unmap j
    silent! unmap n
    silent! unmap J
    silent! unmap N
    silent! unmap k
    silent! unmap e
    silent! unmap K
    silent! unmap E
    silent! unmap h
    silent! unmap y
    silent! unmap H
    silent! unmap Y
  endif
endfunction

" The first time this is sourced at startup, switch to workman layout
if !exists("init_keyboard_loaded")
	let init_keyboard_loaded = 1
	autocmd VimEnter * call SwitchToLayout("workman")
endif

:command! Qwerty  call SwitchToLayout("qwerty")
:command! Workman call SwitchToLayout("workman")

