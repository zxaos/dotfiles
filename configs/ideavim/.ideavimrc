" Workman replaces HJKL ln the right hand with YNEO.
" To make the keys in that hand position continue to work, we need to shuffle
" around the functions of the keys that are being replaced.

" Rebind the right hand home row to workman keys and shuffle the other commands
" that are displaced. See links for the original remapings.
" * https://axiomatic.neophilus.net/posts/2013-08-13-workman-layout-for-vim.html
" * https://github.com/kennykaye/dotfiles/blob/master/vim/settings/keyboard-layouts.vim

" To allow this to rebind mappings from plugins, it must be loaded after they
" are, so must be in after/plugin instead of just a settings file we load in
" the regular way.

" Common bindings that don't switch per-layout, but defined here because we
" had to disable the default bindings loaded bythe plugin
if exists("g:loaded_surround")
  nmap ds  <Plug>Dsurround
  nmap cs  <Plug>Csurround
  nmap cS  <Plug>CSurround
  xmap S   <Plug>VSurround
  xmap gS  <Plug>VgSurround
  if !exists("g:surround_no_insert_mappings") || ! g:surround_no_insert_mappings
    if !hasmapto("<Plug>Isurround","i") && "" == mapcheck("<C-S>","i")
      imap    <C-S> <Plug>Isurround
    endif
    imap      <C-G>s <Plug>Isurround
    imap      <C-G>S <Plug>ISurround
  endif
endif

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

    " NB: ZoomWinTab added so that accidental :only via <C-W>O can be reverted
    " Provide easier split navigation
    "nnoremap <silent> <S-Down> <C-W><C-J>
    "nnoremap <silent> <S-Up> <C-W><C-K>
    "nnoremap <silent> <S-Right> <C-W><C-L>
    "nnoremap <silent> <S-Left> <C-W><C-H>

    "Better split navigation (map workman)
    map <C-y> <C-w>h
    map <C-n> <C-w>j
    map <C-e> <C-w>k
    map <C-o> <C-w>l
    "Better split navigation (unmap Qwerty)
    silent! unmap <C-h>
    silent! unmap <C-j>
    silent! unmap <C-k>
    silent! unmap <C-l>

    " see also settings/fzf.vim
    let $FZF_DEFAULT_OPTS='--bind ctrl-n:down,ctrl-e:up'

    " remap vim-fugitive's y<C-G> if it exists. Otherwise there's lag when
    " moving the cursor left due to the existing 'y' remapping
    " see https://github.com/tpope/vim-fugitive/issues/761
    " https://vi.stackexchange.com/questions/7734/how-to-save-and-restore-a-mapping
    if !empty(maparg('y<C-G>', 'n'))
     let fugitive_map_save = maparg('y<C-G>', 'n', 0, 1)
     let fugitive_map_save = substitute(fugitive_map_save.rhs, '<SID>', '<SNR>' . fugitive_map_save.sid . '_', 'g')
     exe 'nnoremap <buffer> <silent> h<C-G> ' . fugitive_map_save
     nunmap <buffer> <silent> y<C-G>
    endif
   
    if exists("g:loaded_surround")
      silent! nunmap ys
      silent! nunmap yS
      silent! nunmap yss
      silent! nunmap ySs
      silent! nunmap ySS
      nmap hs  <Plug>Ysurround
      nmap hS  <Plug>YSurround
      nmap hss <Plug>Yssurround
      nmap hSs <Plug>YSsurround
      nmap hSS <Plug>YSsurround
    endif

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

    "Better split navigation (unmap workman)
    silent! unmap <C-y>
    silent! unmap <C-n>
    silent! unmap <C-e>
    silent! unmap <C-o>

    "Better split navigation (map qwerty)
    map <C-h> <C-w>h
    map <C-j> <C-w>j
    map <C-k> <C-w>k
    map <C-l> <C-w>l

    " see also settings/fzf.vim
    let $FZF_DEFAULT_OPTS=''

    " TODO: reverese the fugitive_map_save workaround
    
    if exists("g:loaded_surround")
      silent! nunmap hs
      silent! nunmap hS
      silent! nunmap hss
      silent! nunmap hSs
      silent! nunmap hSS
      nmap ys  <Plug>Ysurround
      nmap yS  <Plug>YSurround
      nmap yss <Plug>Yssurround
      nmap ySs <Plug>YSsurround
      nmap ySS <Plug>YSsurround
    endif

  endif
endfunction

" The first time this is sourced at startup, switch to workman layout
augroup init_keyboard
  au!
  if $KBL != "QWERTY"
    autocmd VimEnter * call SwitchToLayout("workman")
  else
    autocmd VimEnter * call SwitchToLayout("qwerty")
  endif
augroup end

:command! Qwerty  call SwitchToLayout("qwerty")
:command! Workman call SwitchToLayout("workman")
