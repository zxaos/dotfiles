lua << EOF
lspconfig = require('lspconfig')

-- simrat39/rust-tools automatically configures rust-analyzer so we don't do it here

if vim.fn.executable("gopls") then
  lspconfig.gopls.setup{}
end
EOF
