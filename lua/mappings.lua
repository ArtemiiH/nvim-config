require("nvchad.mappings")

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "CMD enter command mode" })

map("n", "<leader>fm", function()
	require("conform").format()
end, { desc = "File Format with conform" })

map("i", "jk", "<ESC>", { desc = "Escape insert mode" })

-- Terminal
map("n", "<leader>i", function()
	require("nvchad.term").new({ pos = "float", id = "floatTerm" })
end, { desc = "Terminal New floating window" })

-- Dap
map("n", "<leader>db", "<cmd> DapToggleBreakpoint <CR>", { desc = "Dap add breakpoint at line" })
map("n", "<leader>dus", function()
	local widgets = require("dap.ui.widgets")
	local sidebar = widgets.sidebar(widgets.scopes)
	sidebar.open()
end, { desc = "Dap Open debugging sidebar" })

-- Dap Python
map("n", "<leader>dpr", function()
	require("dap-python").test_method()
end)

-- Dap Go
map("n", "<leader>dgt", function()
	require("dap-go").debug_test()
end, { desc = "Dap-Go Debug go test" })
map("n", "<leader>dgl", function()
	require("dap-go").debug_last()
end, { desc = "Dap-Go Debug last go test" })

-- Gopher
map("n", "<leader>gsj", "<cmd> GoTagAdd json <CR>", { desc = "Gopher Add json struct tags" })
map("n", "<leader>gsy", "<cmd> GoTagAdd taml <CR>", { desc = "Gopher Add yaml struct tags" })

-- Treesitter Context
map("n", "[c", function()
	require("treesitter-context").go_to_context()
end, { desc = "treesitter-context Jump to context (upwards)" })
