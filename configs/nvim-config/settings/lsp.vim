lua << EOF
lspconfig = require('lspconfig')

if vim.fn.executable("gopls") then
  lspconfig.gopls.setup{}
end
EOF
