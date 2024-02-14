lua << EOF
lspconfig = require('lspconfig')

local signs = { Error = " ", Warn = " ", Hint = " ", Info = " " }
for type, icon in pairs(signs) do
  local hl = "DiagnosticSign" .. type
  vim.fn.sign_define(hl, { text = icon, texthl = hl, numhl = hl })
end

-- simrat39/rust-tools automatically configures rust-analyzer so we don't do it here

-- lspconfig.elixirls instead provided by mhanberg/nvim-elixir

-- Python
lspconfig.jedi_language_server.setup{
  cmd = {"/Users/zxaos/.local/share/virtualenvs/nvim-env--DM9KkiB/bin/jedi-language-server"}
}

if vim.fn.executable("gopls") then
  lspconfig.gopls.setup{}
end
EOF
