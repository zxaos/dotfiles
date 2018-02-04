" ===================== Basic Paths and Bootstrapping ============

" This could eventually be replaced with stdpath(). See https://github.com/neovim/neovim/issues/5297
let g:VIMCONFIG = expand('~/.config/nvim') 

" ===================== Provider Configuratons ===================

let g:loaded_python_provider = 1  " Skip Python2 provider
let g:python3_host_prog = expand('~/.pyenv/versions/py3neovim/bin/python') " Use a python3 virtuanenv

" ======================== Source Settings ========================
" Settings are stored in seperate files and then sourced

exe 'source' g:VIMCONFIG . '/settings/minpac.vim'
" exe 'source' '~/.vim/settings/settings.vim'
for fpath in split(globpath(g:VIMCONFIG . '/settings', '*.vim'), '\n')
 if (fpath != 'settings' && fpath != 'minpac')
   exe 'source' fpath
 endif
endfor
