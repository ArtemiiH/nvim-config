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
}

return M
