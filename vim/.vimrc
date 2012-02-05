" Basics {
  set nocompatible    "Make vim behave usefully
  set encoding=utf-8  "Set a nice default encoding
" }

" Bundle Support (Pathogen){
  runtime bundle/vim-pathogen/autoload/pathogen.vim
  call pathogen#infect()		"Use pathogen bundles
  call pathogen#helptags()
" }

" General Settings {
  filetype plugin indent on	"Enable indenting and filetype specific rules
  syntax on                 "Enable syntax highlighting
  set mouse=a               "Enable mouse use
" }

" Vim UI {
  set showmode
  set cursorline      "Highlight current line
  set number

  "" Fonts and colours ""
    if has ("macunix")
      set guifont=Inconsolata:h16
      set background=dark
      colorscheme solarized
    endif
  " }
    
  " Status and Ruler {
    if has('cmdline_info')
      set ruler
      set rulerformat=%30(%=\:b%n%y%m%r%w\ %l,%c%V\ %P%)
      set showcmd
    endif

    if has('statusline')
      set laststatus=2            "Always show status. Prevents unexpected window resizing.
      set statusline=%<%f\        "Filename
      set statusline+=%w%h%m%r    "Options
      set statusline+=%{fugitive#statusline()} "Git
      set statusline+=\ [%{&ff}/%Y]            " filetype
      set statusline+=\ [%{getcwd()}]          " current dir
      "set statusline+=\ [A=\%03.3b/H=\%02.2B] " ASCII / Hexadecimal value of char
      set statusline+=%=%-14.(%l,%c%V%)\ %p%%  " Right aligned file nav info
    endif
  " }

  " Searching {
    set showmatch
    set incsearch
    set hlsearch
    set ignorecase    "Ignore case when searching but...
    set smartcase     "Don't ignore case when search term is mixed case
  " }
" }

