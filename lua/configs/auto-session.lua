local function pre_save()
  local nvim_tree = require "nvim-tree.api"
  nvim_tree.tree.close()
end

local function post_resore()
  local nvim_tree = require "nvim-tree.api"
  nvim_tree.tree.change_root(vim.fn.getcwd())
  nvim_tree.tree.toggle()
  local key = vim.api.nvim_replace_termcodes("<C-w>=", true, false, true)
  vim.api.nvim_feedkeys(key, "n", false)
end

return {
  pre_save_cmds = { pre_save },
  post_restore_cmds = { post_resore, "bfirst" },
  log_level = "error",
  auto_session_suppress_dirs = { "~/", "~/Projects", "~/Downloads", "/" },
  auto_save_enabled = true,
  auto_restore_enabled = true,
}
