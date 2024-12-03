return {
  formatters_by_ft = {
    toml = { "taplo" },
    lua = { "stylua" },
    python = { "isort", "black" },
    markdown = { "prettier" },
  },
  format_on_save = {
    -- These options will be passed to conform.format()
    timeout_ms = 2000,
    lsp_fallback = true,
  },
}
