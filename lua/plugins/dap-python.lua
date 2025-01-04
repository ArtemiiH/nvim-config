return {
  "mfussenegger/nvim-dap-python",
  ft = "python",
  config = function()
    require("dap-python").setup()
    require("dap-python").test_runner = "pytest"

    vim.keymap.set("n", "<leader>dpr", function()
      require("dap-python").test_method()
    end, { desc = "Dap-Python Run and debug closest test method above the cursor" })
    vim.keymap.set("n", "<leader>dpc", function()
      require("dap-python").test_class()
    end, { desc = "Dap-Python Run and debug closest test class above the cursor" })
  end,
}
