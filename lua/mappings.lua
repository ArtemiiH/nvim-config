require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- Terminal
map("n", "<leader>i", function()
  require("nvchad.term").new { pos = "float", id = "floatTerm" }
end, { desc = "Terminal New floating window" })

-- Dap
map("n", "<leader>db", "<cmd>DapToggleBreakpoint <CR>", { desc = "Dap Add breakpoint at line" })

map("n", "<F8>", function()
  require("dap").continue()
end, { desc = "Dap Continue" })
map("n", "<F9>", function()
  require("dap").step_over()
end, { desc = "Dap Step over" })
map("n", "<F4>", function()
  require("dap").step_into()
end, { desc = "Dap Step into" })
map("n", "<F7>", function()
  require("dap").step_out()
end, { desc = "Dap Step out" })

-- Dap-UI
map("n", "<leader>duo", function()
  require("dapui").open()
end, { desc = "Dap Open UI" })
map("n", "<leader>duc", function()
  require("dapui").close()
end, { desc = "Dap Close UI" })

-- Dap Python
map("n", "<leader>dpr", function()
  require("dap-python").test_method()
end, { desc = "Dap-Python Run and debug closest test method above the cursor" })
map("n", "<leader>dpc", function()
  require("dap-python").test_class()
end, { desc = "Dap-Python Run and debug closest test class above the cursor" })

-- Dap Go
map("n", "<leader>dgt", function()
  require("dap-go").debug_test()
end, { desc = "Dap-Go Debug go test" })
map("n", "<leader>dgl", function()
  require("dap-go").debug_last()
end, { desc = "Dap-Go Debug last go test" })

-- Gopher
map("n", "<leader>gsj", "<cmd>GoTagAdd json <CR>", { desc = "Gopher Add json struct tags" })
map("n", "<leader>gsy", "<cmd>GoTagAdd taml <CR>", { desc = "Gopher Add yaml struct tags" })

-- Treesitter Context
map("n", "[c", function()
  require("treesitter-context").go_to_context()
end, { desc = "treesitter-context Jump to context (upwards)" })
