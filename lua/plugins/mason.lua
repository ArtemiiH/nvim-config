return {
  'williamboman/mason.nvim',
  cmd = { 'Mason', 'MasonInstall', 'MasonInstallAll', 'MasonUpdate' },
  dependencies = { 'williamboman/mason-lspconfig.nvim' },
  lazy = false,
  config = function(_, opts)
    require('mason').setup(opts)
  end,
}
