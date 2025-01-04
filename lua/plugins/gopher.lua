return {
  'olexsmir/gopher.nvim',
  ft = 'go',
  config = function(_, opts)
    require('gopher').setup(opts)
    vim.keymap.set('n', '<leader>gsj', '<cmd>GoTagAdd json <CR>', { desc = 'Gopher Add json struct tags' })
    vim.keymap.set('n', '<leader>gsy', '<cmd>GoTagAdd taml <CR>', { desc = 'Gopher Add yaml struct tags' })
  end,
  build = function()
    vim.cmd [[silent! GoInstallDeps]]
  end,
}
