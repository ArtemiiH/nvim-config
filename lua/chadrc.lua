---@type ChadrcConfig
local M = {}

M.ui = {
  transparency = true,
  theme = "catppuccin",
  theme_toggle = { "catppuccin", "gruvbox_light" },

  hl_override = {
    Comment = {
      italic = true,
    },
  },

  hl_add = {
    NvimTreeOpenedFolderName = { fg = "green", bold = true },
  },

  nvdash = {
    load_on_startup = true,
  },
}

return M
