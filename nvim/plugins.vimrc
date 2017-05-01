" Specify a directory for plugins
call plug#begin("$HOME/.config/nvim/vim-plug-plugins")

" Make sure you use single quotes
" Shorthand notation: fetches https://github.com/junegunn/vim-easy-align
" Plug 'junegunn/vim-easy-align'
" Any valid git URL is allowed
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Multiple Plug commands can be written in a single line using | separators
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" On-demand loading
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Using a non-master branch
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Using a tagged release; wildcard allowed (requires git 1.9.2 or above)
" Plug 'fatih/vim-go', { 'tag': '*' }
" Plugin options
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" Plugin outside ~/.vim/plugged with post-update hook
" Plug 'junegunn/fzf', { 'dir': '~/.fzf', 'do': './install --all' }
" Unmanaged plugin (manually installed and updated)
" Plug '~/my-prototype-plugin'

" Color Schemes
" Plug 'mhartington/oceanic-next'
Plug 'chriskempson/base16-vim'
" Plug 'joshdick/onedark.vim'

" Code Intelligence
Plug 'Shougo/deoplete.nvim'
Plug 'neomake/neomake'

" Code Editing Improvements
Plug 'tpope/vim-commentary'
Plug 'junegunn/vim-easy-align'

" Language : Javascript
Plug 'pangloss/vim-javascript'
Plug 'carlitux/deoplete-ternjs'
Plug 'heavenshell/vim-jsdoc'

" Language : Taskpaper
Plug 'davidoc/taskpaper.vim'

" Language : CSS
Plug 'ap/vim-css-color'

" Language : Ansible / YAML
Plug 'pearofducks/ansible-vim'

" Tool Support
Plug 'tpope/vim-fugitive'
Plug 'airblade/vim-gitgutter'
Plug 'rizzatti/dash.vim'
" dir should match fzf install - this one is homebrew
Plug '/usr/local/opt/fzf' | Plug 'junegunn/fzf.vim'
Plug 'tpope/vim-vinegar'

" Per-project settings
Plug 'LucHermitte/lh-vim-lib' | Plug 'LucHermitte/local_vimrc'

" Status Line Enhancements
Plug 'bling/vim-bufferline'
Plug 'vim-airline/vim-airline'
Plug 'vim-airline/vim-airline-themes'

Plug 'edkolev/tmuxline.vim'

" Suggested Maybe?
" Plug 'https://github.com/junegunn/vim-github-dashboard.git'
" Plug 'SirVer/ultisnips' | Plug 'honza/vim-snippets'
" Plug 'scrooloose/nerdtree', { 'on':  'NERDTreeToggle' }
" Plug 'tpope/vim-fireplace', { 'for': 'clojure' }
" Plug 'rdnetto/YCM-Generator', { 'branch': 'stable' }
" Plug 'fatih/vim-go', { 'tag': '*' }
" Plug 'nsf/gocode', { 'tag': 'v.20150303', 'rtp': 'vim' }
" call dein#add('mileszs/ack.vim')
" call dein#add('Shougo/neosnippet.vim')
" call dein#add('Shougo/neosnippet-snippets')
" call dein#add('Shougo/vimshell', { 'rev': '3787e5' })

" Initialize plugin system
call plug#end()
