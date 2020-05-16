 if exists('*minpac#init')
  " minpac is loaded.
  call minpac#init()
  call minpac#add('k-takata/minpac', {'type': 'opt'})

  " Plugin support
  call minpac#add('tpope/vim-repeat') " Support plugins defining handler for dot repetition

  " Appearance
  call minpac#add('rakr/vim-one')

  " Navigation
  " Load denite as an optional dep so we can control when it starts - see
  " denite.vim settings for more information
  call minpac#add('Shougo/denite.nvim', {'type': 'opt', 'do': ':UpdateRemotePlugins'})
  call minpac#add('tpope/vim-projectionist') " per-project file and alternate navigation
  call minpac#add('tpope/vim-vinegar') " make netrw more usable

  " Editing
  " call minpac#add('tpope/vim-surround') " use `s <whatever>` as an object for surrounding punctuation
  call minpac#add('tpope/vim-commentary') " gc to block comment
  call minpac#add('tpope/vim-endwise') " automatically add endif etc in languages which need it
  call minpac#add('neoclide/coc.nvim', {'branch': 'release'})

  " UI and Window Management
  " call minpac#add('ryanoasis/vim-devicons')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')

  " Syntax
  call minpac#add('hashivim/vim-terraform')
  call minpac#add('pearofducks/ansible-vim')
  call minpac#add('stephpy/vim-yaml') " Faster YAML syntax than core
  call minpac#add('cespare/vim-toml')
  call minpac#add('pangloss/vim-javascript') " Needed for js syntax folding
  call minpac#add('gutenye/json5.vim')
  call minpac#add('fatih/vim-go')
  call minpac#add('elixir-editors/vim-elixir')
  call minpac#add('andyl/vim-projectionist-elixir', {'type': 'opt'}) " Projectionist bindings for Elixir and Phoenix
  call minpac#add('martinda/Jenkinsfile-vim-syntax')
  call minpac#add('fatih/vim-go')
  call minpac#add('elixir-editors/vim-elixir')
  call minpac#add('andyl/vim-projectionist-elixir', {'type': 'opt'}) " Projectionist bindings for Elixir and Phoenix

  " Compiling, Linting, & Testing
  call minpac#add('w0rp/ale')
  call minpac#add('tpope/vim-dispatch')
  call minpac#add('janko-m/vim-test')

  " Source Control
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('airblade/vim-gitgutter')
endif

" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackUpdate packadd minpac | source $MYVIMRC | call minpac#update()
command! PackClean  packadd minpac | source $MYVIMRC | call minpac#clean()
command! PackStatus packadd minpac | source $MYVIMRC | call minpac#status()
