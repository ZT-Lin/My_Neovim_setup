
require("nvim-treesitter.config").setup {
  ensure_installed = {
    "vim", "vimdoc", "bash", "c", "cpp", "javascript", "json",
    "lua", "python", "typescript", "tsx", "css", "rust",
    "markdown", "markdown_inline"
  },

  highlight = { enable = true },
  indent = { enable = true },
}

vim.g.rainbow_delimiters = {
  strategy = {
    [''] = require('rainbow-delimiters.strategy.global'),
  },
  query = {
    [''] = 'rainbow-delimiters',
  },
}

