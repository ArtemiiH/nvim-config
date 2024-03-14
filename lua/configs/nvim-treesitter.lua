local opts = {
  ensure_installed = {
    -- defaults
    "vim",
    "vimdoc",
    "lua",
    "luadoc",
    -- web dev
    "json",
    -- go
    "go",
    "gomod",
    "gosum",
    "gowork",
    -- python
    "python",
    -- misc
    "c",
    "tsx",
    "markdown",
    "markdown_inline",
    "bash",
    "cmake",
    "dockerfile",
    "yaml",
  },
  indent = {
    enable = true,
    -- disable = {
    --   "python"
    -- },
  },
}

return opts
