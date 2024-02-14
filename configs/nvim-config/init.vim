" ===================== Basic Paths and Bootstrapping ============

" Path for the plugin environments provided by asdf
let s:ENVPATH = resolve(stdpath('config') . '/../nvim-env')

" ===================== Provider Configuratons ===================

" let g:ruby_host_prog = 'chruby 2.5.0; and neovim-ruby-host' " Use a chruby env

" Point to the Python executables in `asdf`
let g:loaded_python_provider = 1  " Skip Python2 provider

" Ask pipenv for the location of the python bin. Then strip the trailing newline
let g:python3_host_prog = system('cd '. s:ENVPATH . '; pipenv --py')[:-2]

" Point to the local install of node in `asdf` and local node_modules
"let g:node_host_prog = expand('~/Developer/dotfiles/neovim/node_modules/.bin/neovim-node-host')
"let g:node_host_prog = expand(s:ENVPATH . '/neovim-node-host')
let g:node_host_prog = expand(s:ENVPATH . '/node_modules/neovim/bin/cli.js')


" ======================== Source Settings ========================
" Settings are stored in seperate files and then sourced

for fpath in globpath(stdpath('config') . '/settings', '*.vim', 0, 1)
  exe 'source' fpath
endfor

" for "after", use after/plugins/foo.vim
