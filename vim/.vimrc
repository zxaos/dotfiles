set nocompatible		"Make vim behave usefully
set encoding=utf-8		"Set a nice default encoding

runtime bundle/vim-pathogen/autoload/pathogen.vim
call pathogen#infect()		"Use pathogen bundles
call pathogen#helptags()

filetype plugin indent on	"Turn on indenting and filetype specific rules
syntax on			"Turn on syntax highlighting

set laststatus=2	"Always show the status line

"" Fonts and colours ""
if has ("macunix")
    set guifont=Inconsolata:h16
    set background=dark
    colorscheme solarized
endif

