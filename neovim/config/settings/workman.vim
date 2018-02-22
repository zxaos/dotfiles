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

    " Change splits to use the new navigation keys
    nnoremap <silent> <C-W><C-O> <C-W><C-L>
    nnoremap <silent> <C-W><C-N> <C-W><C-J>
    nnoremap <silent> <C-W><C-E> <C-W><C-K>
    nnoremap <silent> <C-W><C-Y> <C-W><C-H>

    " Provide easier split navigation
    "nnoremap <silent> <S-Down> <C-W><C-J>
    "nnoremap <silent> <S-Up> <C-W><C-K>
    "nnoremap <silent> <S-Right> <C-W><C-L>
    "nnoremap <silent> <S-Left> <C-W><C-H>

    " see settings/fzf.vim
    nnoremap <silent> <C-P> :<C-U>FZF --bind=ctrl-n:down,ctrl-e:up<CR>

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

    silent! nunmap <C-W><C-O>
    silent! nunmap <C-W><C-N>
    silent! nunmap <C-W><C-E>
    silent! nunmap <C-W><C-Y>

    " Better split navigation
    "nnoremap <silent> <C-J> <C-W><C-J>
    "nnoremap <silent> <C-K> <C-W><C-K>
    "nnoremap <silent> <C-L> <C-W><C-L>
    "nnoremap <silent> <BS> <C-W><C-H> "Fixes a bug where H was being interpreted as backspace

    " see settings/fzf.vim
    nnoremap <C-p> :<C-u>FZF<CR>
  endif
endfunction

" The first time this is sourced at startup, switch to workman layout
augroup init_keyboard
	au!
	autocmd VimEnter * call SwitchToLayout("workman")
augroup end

:command! Qwerty  call SwitchToLayout("qwerty")
:command! Workman call SwitchToLayout("workman")

