return {
  'leoluz/nvim-dap-go',
  ft = 'go',
  dependencies = 'mfussenegger/nvim-dap',
  config = function(_, opts)
    require('dap-go').setup(opts)

    vim.keymap.set('n', '<leader>dgt', function()
      require('dap-go').debug_test()
    end, { desc = 'Dap-Go Debug go test' })
    vim.keymap.set('n', '<leader>dgl', function()
      require('dap-go').debug_last()
    end, { desc = 'Dap-Go Debug last go test' })
  end,
}
