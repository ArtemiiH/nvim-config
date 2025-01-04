return {
  -- Main LSP Configuration
  'neovim/nvim-lspconfig',
  dependencies = {'hrsh7th/cmp-nvim-lsp'},
  opts = { inlay_hints = { enabled = true } },
  config = function()
    require('configs.lsp-config')
  end,
}
