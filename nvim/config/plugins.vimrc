" Add or remove your plugins here:

" Color Schemes
call dein#add('mhartington/oceanic-next')
"call dein#add('chriskempson/base16-vim')
"call dein#add('joshdick/onedark.vim')

" Code Intelligence
call dein#add('neomake/neomake')
call dein#add('Shougo/deoplete.nvim', {'on_i' : 1})
call dein#add('rizzatti/dash.vim')
call dein#add('tpope/vim-commentary')

"   - Javascript
call dein#add('pangloss/vim-javascript', {'on_ft': ['javascript', 'jsx']})
call dein#add('carlitux/deoplete-ternjs', {'on_ft': ['javascript', 'jsx']})

" Git support
" call dein#add('tpope/vim-fugitive', {'on_cmd' : 'Gstatus'})
" Don't lazy load this anymore so that airline can use it
call dein#add('tpope/vim-fugitive')

" Fuzzy finder
call dein#add('junegunn/fzf', { 'build': './install', 'merged': 0 })
call dein#add('junegunn/fzf.vim', { 'depends': 'fzf' })

" Per-project settings
call dein#add('LucHermitte/lh-vim-lib')
call dein#add('LucHermitte/local_vimrc', { 'depends': 'lh-vim-lib'})

" Status Line Enhancements
call dein#add('bling/vim-bufferline')
call dein#add('vim-airline/vim-airline', { 'depends': ['vim-bufferline', 'vim-fugitive']})
" call dein#add('vim-airline/vim-airline-themes', { 'depends' : 'vim-airline'})

" Other
call dein#add('dpc/vim-smarttabs', {'on_i' : 1})
call dein#add('tpope/vim-vinegar')

" Taskpaper
" (on ft taskpaper? on ext?)
call dein#add('davidoc/taskpaper.vim')

"Plugins without dependencies:
"call dein#add('mileszs/ack.vim')
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
"call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
