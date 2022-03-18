lua << EOF
require('telescope').setup {
  extensions = {
    dash = {
      dash_app_path = '/Applications/Setapp/Dash.app'
    }
  }
}
-- See defaults at https://github.com/nvim-telescope/telescope.nvim#telescope-setup-structure
-- See fzf defaults at https://github.com/nvim-telescope/telescope-fzf-native.nvim#telescope-setup-and-configuration

-- Load telescope extensions
require('telescope').load_extension('fzf')
require('telescope').load_extension('dash')


EOF

" Find files using Telescope command-line sugar.
nnoremap <leader>tb <cmd>Telescope buffers<cr>
nnoremap <leader>td <cmd>Telescope dash search<cr>
nnoremap <leader>tf <cmd>Telescope find_files<cr>
nnoremap <leader>tg <cmd>Telescope git_files<cr>
nnoremap <leader>th <cmd>Telescope help_tags<cr>
nnoremap <leader>tr <cmd>Telescope live_grep<cr>
