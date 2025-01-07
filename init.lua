-- Options
require "options"

-- Utils
vim.api.nvim_create_autocmd("TextYankPost", {
  desc = "Highlighting when yanking (copying) text",
  group = vim.api.nvim_create_augroup("highlight-yank", { clear = true }),
  callback = function()
    vim.highlight.on_yank { timeout = 300 }
  end,
})

-- Lazy
require "init-lazy"

vim.cmd.colorscheme "tokyonight"

vim.schedule(function()
  require "mappings"
end)
