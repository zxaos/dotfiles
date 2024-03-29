function! PackInit() abort
  packadd minpac

  call minpac#init()

  " Plugin support
  call minpac#add('k-takata/minpac', {'type': 'opt'}) " Minpac itself, load if we call a minpac function
  call minpac#add('nvim-lua/plenary.nvim') " Lua functions library. Required for Telescope.
  call minpac#add('tpope/vim-repeat') " Support plugins defining handler for dot repetition

  " Appearance
  call minpac#add('rakr/vim-one')
  call minpac#add('nvim-tree/nvim-web-devicons')
  call minpac#add('ryanoasis/vim-devicons')
  call minpac#add('vim-airline/vim-airline')
  call minpac#add('vim-airline/vim-airline-themes')

  " Navigation
  call minpac#add('tpope/vim-projectionist') " per-project file and alternate navigation
  call minpac#add('tpope/vim-vinegar') " make netrw more usable
  call minpac#add('nvim-telescope/telescope.nvim') " Fuzzy finder and previewer
  "" Telescope Plugins. They also need to be added to telescope.vim
  call minpac#add('nvim-telescope/telescope-fzf-native.nvim', {'do': 'make'}) " Native sorter. Required compilation. Recommended for performance over telescope pure lua sorter
  call minpac#add('mrjones2014/dash.nvim', {'do': 'make install'})

  " Editing
  " call minpac#add('tpope/vim-surround') " use `s <whatever>` as an object for surrounding punctuation
  call minpac#add('tpope/vim-commentary') " gc to block comment
  call minpac#add('tpope/vim-endwise') " automatically add endif etc in languages which need it
  call minpac#add('pedrohdz/vim-yaml-folds')

  " UI and Window Management
  call minpac#add('folke/trouble.nvim')

  " Syntax
  call minpac#add('nvim-treesitter/nvim-treesitter', {'do': ':TSUpdate'}) " Treesitter abstraction and syntax highlighting
  call minpac#add('neovim/nvim-lspconfig') " Collection of configurations for the built-in LSP client
  call minpac#add('mhanberg/elixir.nvim') " ElixirLS, Mix, Projectionist support. Seems more stable than externally installed elixir-ls 
  " call minpac#add('elixir-editors/vim-elixir')
  " replacing these two with just treesitter?
  " call minpac#add('arzg/vim-rust-syntax-ext') 
  " call minpac#add('rust-lang/rust.vim')
  call minpac#add('simrat39/rust-tools.nvim')


  " call minpac#add('cespare/vim-toml')
  " call minpac#add('fatih/vim-go')
  call minpac#add('gutenye/json5.vim')
  call minpac#add('hashivim/vim-terraform')
  " call minpac#add('martinda/Jenkinsfile-vim-syntax')
  call minpac#add('pangloss/vim-javascript') " Needed for js syntax folding
  call minpac#add('pearofducks/ansible-vim')
  " call minpac#add('stephpy/vim-yaml') " Faster YAML syntax than core - Probably no longer needed
  " call minpac#add('tsandall/vim-rego')

  " Snippets
  call minpac#add('dcampos/nvim-snippy') " nvim-cmp _requires_ a snippet engine
  call minpac#add('honza/vim-snippets')

  " Autocompletion
  call minpac#add('hrsh7th/cmp-nvim-lsp')
  call minpac#add('hrsh7th/cmp-buffer')
  call minpac#add('hrsh7th/cmp-path')
  call minpac#add('hrsh7th/cmp-cmdline')
  call minpac#add('hrsh7th/nvim-cmp')
  call minpac#add('dcampos/cmp-snippy')

  " Compiling, Linting, & Testing
  " call minpac#add('dense-analysis/ale')
  call minpac#add('tpope/vim-dispatch')
  call minpac#add('janko-m/vim-test')

  " Source Control
  call minpac#add('tpope/vim-fugitive')
  call minpac#add('airblade/vim-gitgutter')
endfunction

" Define user commands for updating/cleaning the plugins.
" Each of them loads minpac, reloads .vimrc to register the
" information of plugins, then performs the task.
command! PackUpdate source $MYVIMRC | call PackInit() | call minpac#update()
command! PackClean  source $MYVIMRC | call PackInit() | call minpac#clean()
command! PackStatus source $MYVIMRC | call PackInit() | call minpac#status()
