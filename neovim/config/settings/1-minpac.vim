if exists('*minpac#init')
  " minpac is loaded.
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Appearance
  call minpac#add('ajmwagar/vim-deus')

  " Navigation
  call minpac#add('tpope/vim-projectionist') " per-project file and alternate navigation
  call minpac#add('tpope/vim-vinegar') " make netrw more usable
  call minpac#add('mhinz/vim-grepper') " Async Grepper

  " UI and Window Management
  call minpac#add('troydm/zoomwintab.vim')
  call minpac#add('ryanoasis/vim-devicons')
  call minpac#add('bagrat/vim-workspace')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')

  " Syntax
  call minpac#add('hashivim/vim-terraform')
  call minpac#add('stephpy/vim-yaml') " Faster YAML syntax than core
  call minpac#add('pearofducks/ansible-vim', {'branch': 'v2'}) " See https://git.io/vAmQa the V2 specifier can be removed near the end of March 2018

  " Compiling & Linting
  call minpac#add('tpope/vim-dispatch')
  call minpac#add('radenling/vim-dispatch-neovim')
  " call minpac#add('w0rp/ale')

  " Source Control
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('airblade/vim-gitgutter')
endif

" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
