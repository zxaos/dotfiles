"dein Scripts-----------------------------
" Required:
set runtimepath+=$HOME/.config/nvim-dein-plugins/repos/github.com/Shougo/dein.vim

" Required:
if dein#load_state("$HOME/.config/nvim-dein-plugins")
  call dein#begin("$HOME/.config/nvim-dein-plugins")

  " Let dein manage dein
  " Required:
  call dein#add("$HOME/.config/nvim-dein-plugins/repos/github.com/Shougo/dein.vim")

  " Add or remove your plugins here:
  source $HOME/.config/nvim/config/plugins.vimrc

  " Required:
  call dein#end()
  call dein#save_state()
endif

" If you want to install not installed plugins on startup.
"if dein#check_install()
"  call dein#install()
"endif

"End dein Scripts-------------------------
