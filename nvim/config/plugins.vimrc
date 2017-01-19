" Add or remove your plugins here:

" Color Schemes
call dein#add('chriskempson/base16-vim')
call dein#add('mhartington/oceanic-next')
call dein#add('joshdick/onedark.vim')

" Syntax
call dein#add('pangloss/vim-javascript', {'on_ft': ['javascript']})

" Code Intelligence
call dein#add('neomake/neomake')
call dein#add('tpope/vim-fugitive', {'on_cmd' : 'Gstatus'})

"Plugins without dependencies:
"call dein#add('mileszs/ack.vim')
"call dein#add('Shougo/neosnippet.vim')
"call dein#add('Shougo/neosnippet-snippets')

" You can specify revision/branch/tag.
"call dein#add('Shougo/vimshell', { 'rev': '3787e5' })
