return {
  "rcarriga/nvim-dap-ui",
  dependencies = {
    {
      "mfussenegger/nvim-dap",
      config = function()
        vim.keymap.set("n", "<leader>db", "<cmd>DapToggleBreakpoint <CR>", { desc = "Dap Add breakpoint at line" })

        vim.keymap.set("n", "<F7>", function()
          require("dap").close()
        end, { desc = "Dap Continue" })
        vim.keymap.set("n", "<F8>", function()
          require("dap").continue()
        end, { desc = "Dap Continue" })
        vim.keymap.set("n", "<F9>", function()
          require("dap").step_over()
        end, { desc = "Dap Step over" })
        vim.keymap.set("n", "<F5>", function()
          require("dap").step_into()
        end, { desc = "Dap Step into" })
        vim.keymap.set("n", "<F6>", function()
          require("dap").step_out()
        end, { desc = "Dap Step out" })
      end,
    },
    "nvim-neotest/nvim-nio",
  },
  config = function()
    require("dapui").setup {

      layouts = {
        {
          elements = {
            "scopes",
            "breakpoints",
            "stacks",
            "watches",
          },
          size = 40,
          position = "right",
        },
        {
          elements = {
            "repl",
            --    'console',
          },
          size = 20,
          position = "bottom",
        },
      },
    }

    vim.keymap.set("n", "<leader>duo", function()
      require("dapui").open()
    end, { desc = "Dap Open UI" })
    vim.keymap.set("n", "<leader>duc", function()
      require("dapui").close()
    end, { desc = "Dap Close UI" })
  end,
}
