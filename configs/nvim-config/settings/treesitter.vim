lua <<EOF
require'nvim-treesitter.configs'.setup {
  highlight = {
    enable = true,
    disable = {},
  },
  indent = {
    enable = true,
    disable = {},
  },
  ensure_installed = {
    "bash",
    "elixir",
    "eex",
    "heex",
    "go",
    "hcl",
    "html",
    "json",
    "python",
    "rust",
    "toml",
    "yaml",
  },
-- https://github.com/windwp/nvim-ts-autotag
--  autotag = {
--    enable = true,
--  }
}

-- Override parser configs here. For example, forcing js files to typescript
-- local parser_config = require "nvim-treesitter.parsers".get_parser_configs()
-- parser_config.tsx.filetype_to_parsername = { "javascript", "typescript.tsx" }

EOF
