" ===================== Basic Paths and Bootstrapping ============

" This could eventually be replaced with stdpath(). See https://github.com/neovim/neovim/issues/5297
let g:VIMCONFIG = expand('~/.config/nvim') 

" ===================== Provider Configuratons ===================

let g:loaded_python_provider = 1  " Skip Python2 provider
let g:python3_host_prog = expand('~/.pyenv/versions/py3neovim/bin/python') " Use a python3 virtuanenv
let g:ruby_host_prog = 'chruby 2.5.0; and neovim-ruby-host' " Use a chruby env

" ======================== Source Settings ========================
" Settings are stored in seperate files and then sourced

for fpath in globpath(g:VIMCONFIG . '/settings/before', '*.vim', 0, 1 )
 exe 'source' fpath
endfor

for fpath in globpath(g:VIMCONFIG . '/settings', '*.vim', 0, 1)
  exe 'source' fpath
endfor

" for "after", use after/plugins/foo.vim
