local options = {
  formatters_by_ft = {
    lua = { "stylua" },
    css = { "prettier" },
    html = { "prettier" },
    python = { "black" },
    typescript = { "prettier" },
    typescriptreact = { "prettier" },
  },

  format_on_save = {
    -- these options will be passed to conform.format()
    timeout_ms = 500,
    lsp_fallback = true,
  },
}

return options
