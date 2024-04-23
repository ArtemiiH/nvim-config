---@type ChadrcConfig
local M = {}

M.ui = {
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

  telescope = {
    style = "bordered",
  },

  statusline = {
    theme = "vscode_colored",
  },

  term = {
    float = {
      relative = "editor",
      row = 0.25,
      col = 0.2,
      width = 0.6,
      height = 0.5,
      border = "single",
    },
  },
}

return M
