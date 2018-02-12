if exists('*minpac#init')
  " minpac is loaded.
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Appearance
  call minpac#add('ajmwagar/vim-deus')

  " Navigation
  call minpac#add('tpope/vim-projectionist') " per-project file and alternate navigation

  " Syntax
  call minpac#add('hashivim/vim-terraform')
  call minpac#add('stephpy/vim-yaml') " Faster YAML syntax than core
  call minpac#add('pearofducks/ansible-vim', {'branch': 'v2'}) " See https://git.io/vAmQa the V2 specifier can be removed near the end of March 2018
endif

" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
