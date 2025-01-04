return {
  "catppuccin/nvim",
  name = "catppuccin",
  priority = 1000,
  opts = {
    integrations = {
      cmp = true,
      gitsigns = true,
      treesitter = true,
      markdown = true,
      neotree = true,
      dap = true,
      native_lsp = {
        enabled = true,
        virtual_text = {
          errors = { "italic" },
          hints = { "italic" },
          warnings = { "italic" },
          information = { "italic" },
          ok = { "italic" },
        },
        underlines = {
          errors = { "underline" },
          hints = { "underline" },
          warnings = { "underline" },
          information = { "underline" },
          ok = { "underline" },
        },
        inlay_hints = {
          background = true,
        },
      },
      treesitter_context = true,
      telescope = {
        enabled = true,
      },
      which_key = true,
      indent_blankline = {
        enabled = true,
        scope_color = "rosewater", -- catppuccin color (eg. `lavender`) Default: text
        colored_indent_levels = true,
      },
    },
  },
}
