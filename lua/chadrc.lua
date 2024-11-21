---@type ChadrcConfig
local M = {}

M.base46 = {
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
}

M.ui = {
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
      row = 0.3,
      col = 0.25,
      width = 0.5,
      height = 0.4,
      border = "single",
    },
  },
}

return M
